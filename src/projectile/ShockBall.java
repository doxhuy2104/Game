package projectile;

import main.GamePanel;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Objects;

@SuppressWarnings("ALL")
public class ShockBall extends Projectile {
    GamePanel gp;

    BufferedImage shockBallSheet;
    BufferedImage[] shockBall,hitI;

    public ShockBall(GamePanel gp,int x,int y, double dx, double dy,boolean p,boolean co,boolean exist) {
        super(gp);
        this.gp = gp;
        GetImage();

        this.x = x;
        this.y = y;
        this.dx = dx;
        this.dy = dy;
        this.hitPlayer = p;
        this.hitWall=co;
        this.exist=exist;
    }

    public void GetImage() {
        try {
            shockBallSheet = ImageIO.read(Objects.requireNonNull(getClass().getResource("/projectile/shockBall.png")));

            shockBall = new BufferedImage[4];
            for (int i = 0; i < 4; i++) {
                shockBall[i] = shockBallSheet.getSubimage(i * 32, 0, 32, 32);
            }

            BufferedImage hitSheet=ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/effects/zap.png")));
            hitI=new BufferedImage[6];
            for(int i=0;i<6;i++){
                hitI[i]=hitSheet.getSubimage(36*i,0,36,36);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update() {
        if(exist)super.update();
        else if(hitWall) hitWallU();
        else if(hitPlayer) hitPlayerU();
    }

    public void draw(Graphics2D g2, int i) {
        if(exist) g2.drawImage(shockBall[i], drawX, drawY, 64, 64, null);
        else {
            if(hitPlayer)gp.player.isHurt=true;
            g2.drawImage(hitI[i],drawX,drawY,72,72,null);
        }
    }
}
