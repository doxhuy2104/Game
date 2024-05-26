package environment;

import main.GamePanel;

import javax.swing.*;
import java.awt.*;
import java.awt.image.BufferedImage;

public class LightingManager extends JPanel {
    private GamePanel gp;
    public BufferedImage darknessFilter;
    private int lightRadius;
    private int centerX, centerY;
    public static float opacity = 0.0f;

    public LightingManager(GamePanel gp, int lightRadius) {
        this.gp = gp;
        this.lightRadius = lightRadius;
    }

    public void paintComponent(Graphics g) {
        super.paintComponent(g);
        centerX = gp.screenWidth / 2;
        centerY = gp.screenHeight / 2;
        int height = gp.screenHeight;
        int width = gp.screenWidth;
        darknessFilter = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);

        // Tạo đối tượng Graphics2D từ BufferedImage
        Graphics2D g2d = darknessFilter.createGraphics();

        // Đặt độ trong suốt cho màu đen (giá trị từ 0.0 đến 1.0, càng gần 0.0 càng mờ)
        g2d.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, opacity));

        // Vẽ màu đen lên toàn màn hình
        g2d.setColor(Color.BLACK);
        g2d.fillRect(0, 0, width, height);

        // Vẽ vòng tròn trong suốt ở giữa màn hình
        int circleRadius = Math.min(width, height) / 4; // Đặt bán kính hình tròn
        g2d.setComposite(AlphaComposite.Clear); // Đặt màu trong suốt
        g2d.fillOval(centerX - circleRadius, centerY - circleRadius, 2 * circleRadius, 2 * circleRadius);

        // Kết thúc vẽ và hiển thị hình ảnh lên màn hình
        g2d.dispose();
        g.drawImage(darknessFilter, 0, 0, null);
    }
}