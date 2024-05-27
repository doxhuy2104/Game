package entity;

import main.GamePanel;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Objects;

@SuppressWarnings("CallToPrintStackTrace")
public class Princess extends Entity {
    private static final int FRAME_WIDTH = 64;
    private static final int FRAME_HEIGHT = 128;
    private static final int FRAME_DELAY = 6; // Độ trễ giữa các khung hình, có thể điều chỉnh

    private final GamePanel gp;
    private BufferedImage[] move;
    private int currentFrameIndex = 0;
    private int frameDelayCount = 0;

    public Princess(GamePanel gp) {
        super(gp);
        this.gp = gp;
        getPrincessImage();
    }

    private void getPrincessImage() {
        try {
            BufferedImage princess = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/npc/princess.png")));

            move = new BufferedImage[8];
            for (int i = 0; i < 8; i++) {
                move[i] = princess.getSubimage(i * FRAME_WIDTH, 0, FRAME_WIDTH, FRAME_HEIGHT);
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ
            e.printStackTrace();
        }
    }

    @Override
    public void update() {
        super.update();
        // Tăng biến đếm độ trễ giữa các khung hình
        frameDelayCount++;
        if (frameDelayCount >= FRAME_DELAY) {
            // Đặt lại biến đếm và chuyển sang khung hình tiếp theo
            frameDelayCount = 0;
            currentFrameIndex = (currentFrameIndex + 1) % move.length;
        }
    }

    @Override
    public void draw(Graphics2D g2) {
        drawX = worldX - gp.player.x + gp.player.screenX;
        drawY = worldY - gp.player.y + gp.player.screenY;
        g2.drawImage(move[currentFrameIndex], drawX, drawY, FRAME_WIDTH, FRAME_HEIGHT, null);
    }
}
