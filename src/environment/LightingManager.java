package environment;

import main.GamePanel;

import java.awt.*;
import java.awt.image.BufferedImage;

public class LightingManager {
    private GamePanel gp;
    private BufferedImage darknessFilter;
    private int lightRadius;
    private int centerX, centerY;

    public LightingManager(GamePanel gp, int lightRadius) {
        this.gp = gp;
        this.lightRadius = lightRadius;
        createDarknessFilter();
    }

    private void createDarknessFilter() {
        int width = gp.screenWidth;
        int height = gp.screenHeight;
        darknessFilter = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);

        // Đặt toàn bộ màn hình thành màu đen
        for (int x = 0; x < width; x++) {
            for (int y = 0; y < height; y++) {
                darknessFilter.setRGB(x, y, 0xFF000000); // Màu đen (0xFF000000)
            }
        }

        // Tạo vùng sáng xung quanh trung tâm
        for (int x = 0; x < width; x++) {
            for (int y = 0; y < height; y++) {
                int distance = (int) Math.sqrt(Math.pow(x - centerX, 2) + Math.pow(y - centerY, 2));
                if (distance < lightRadius) {
                    darknessFilter.setRGB(x, y, 0x00000000); // Trong suốt (vùng sáng)
                }
            }
        }
    }

    public void setLightCenterPosition() {
        centerX = gp.screenWidth / 2;
        centerY = gp.screenHeight / 2;
        createDarknessFilter();
    }

    public void drawLighting(Graphics2D g2) {
        g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 0.9f)); // Tăng độ trong suốt lên 0.9f
        g2.drawImage(darknessFilter, 0, 0, null);
        g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 1f));
    }
}