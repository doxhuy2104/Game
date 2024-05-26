package entity;

import main.GamePanel;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;

public class Princess extends Entity {
    private static final int FRAME_WIDTH = 64;
    private static final int FRAME_HEIGHT = 128;

    private GamePanel gp;
    private BufferedImage[] move;
    private int currentFrameIndex = 0;

    public Princess(GamePanel gp) {
        super(gp);
        this.gp = gp;
        getPrincessImage();
    }

    private void getPrincessImage() {
        try {
            BufferedImage princess = ImageIO.read(getClass().getResourceAsStream("/npc/princess.png"));

            move = new BufferedImage[8];
            for (int i = 0; i < 8; i++) {
                move[i] = princess.getSubimage(i * FRAME_WIDTH, 0, FRAME_WIDTH, FRAME_HEIGHT);
            }
        } catch (Exception e) {
            // Handle the exception appropriately, e.g., logging or showing an error message
            e.printStackTrace();
        }
    }

    @Override
    public void update() {
        super.update();
    }

    @Override
    public void draw(Graphics2D g2) {
        drawX = worldX - gp.player.x + gp.player.screenX;
        drawY = worldY - gp.player.y + gp.player.screenY;
        g2.drawImage(move[currentFrameIndex], drawX, drawY, FRAME_WIDTH, FRAME_HEIGHT, null);
        // Increment frame index for next draw call
        currentFrameIndex = (currentFrameIndex + 1) % move.length;
    }
}