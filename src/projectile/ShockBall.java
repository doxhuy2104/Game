package projectile;

import main.GamePanel;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;

public class ShockBall extends Projectile {
    GamePanel gp;

    BufferedImage shockBallSheet;
    BufferedImage[] shockBall;
    public int shockBallCounter = 0, shockBallSpeed = 4, shockBallNum = 0;

    public ShockBall(GamePanel gp,int x,int y, double dx, double dy,boolean isAttack) {
        super(gp);
        this.gp = gp;
        GetImage();

        this.x = x;
        this.y = y;
        this.dx = dx;
        this.dy = dy;
        this.attacking = isAttack;
    }

    public void GetImage() {
        try {
            shockBallSheet = ImageIO.read(getClass().getResource("/projectile/shockBall.png"));

            shockBall = new BufferedImage[4];
            for (int i = 0; i < 4; i++) {
                shockBall[i] = shockBallSheet.getSubimage(i * 32, 0, 32, 32);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update() {
        super.update();
    }

    public void draw(Graphics2D g2, int i) {
        g2.drawImage(shockBall[i], drawX-32, drawY-32, 64, 64, null);
    }
}
