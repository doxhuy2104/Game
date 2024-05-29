package projectile;
import main.GamePanel;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Objects;

@SuppressWarnings("ALL")
public class FlameAttack extends Projectile{
    GamePanel gp;

    BufferedImage flameSheet;
    public BufferedImage[] flameSprite;
    public int flameCounter = 0;
    public int flameNum = 0;
    public int spaceCounter = 0;
    public boolean active;
    public double angle;
    public boolean isHitEnemy = false,canHit;

    public FlameAttack(GamePanel gp,int x,int y, double dx, double dy) {
        super(gp);
        this.gp = gp;
        this.x = x;
        this.y = y;
        this.dx = dx;
        this.dy = dy;
        this.active = true;
        this.angle = Math.atan2(dy, dx);
        GetImage();
        canHit=true;
    }

    public void GetImage() {
        try {
            flameSheet = ImageIO.read(Objects.requireNonNull(getClass().getResource("/projectile/projSlashGreen.png")));

            flameSprite = new BufferedImage[6];
            for (int i = 0; i < 6; i++) {
                flameSprite[i] = flameSheet.getSubimage(i * 72, 0, 72, 26);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update() {

            drawX = x - gp.player.x + gp.player.screenX;
            drawY = y - gp.player.y + gp.player.screenY;
            xMove = dx * pjSpeed *2;
            yMove = dy * pjSpeed *2;
            x += (int) xMove;
            y += (int) yMove;
            xMove -= (int) xMove;
            yMove -= (int) yMove;
            flameCounter++;
            spaceCounter++;
            if (spaceCounter >= 30) {
                active = false;
            }
            if (flameCounter >= 10) {
                flameCounter = 0;
                flameNum++;
                if (flameNum >= 5) {
                    flameNum = 0;
                }
        }
    }

    public void draw(Graphics2D g2, int i) {
        g2.rotate(angle, drawX + 48, drawY + 48); // Xoay quanh tâm của flame
        g2.drawImage(flameSprite[i], drawX, drawY, 128, 128, null);
        g2.rotate(-angle, drawX + 48, drawY + 48); // Đặt lại xoay để không ảnh hưởng đến các vật khác
    }
    public boolean isActive() {
        return active;
    }
}