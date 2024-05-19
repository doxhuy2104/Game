package entity;

import main.GamePanel;
import projectile.ShockBall;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;

public class Electronic extends Entity {
    GamePanel gp;
    public ShockBall shockBall;
    BufferedImage[] elecMoveR, elecAttackR, elecMoveL, elecAttackL;
    BufferedImage Move, Attack;
    boolean isAttack =false;
    int mCounter,mNum,aCounter,aNum,coolDown=0;
    public Electronic(GamePanel gp) {
        super(gp);
        this.gp = gp;
        getElecImage();
        hp=5;
        alive=true;
        eSpeed=0.5;
    }

    public void getElecImage() {
        try {
            BufferedImage elec = ImageIO.read(getClass().getResource("/enemies/cloudSpirit.png"));

            elecMoveR = new BufferedImage[4];
            for(int i=0;i<4;i++){
                elecMoveR[i] = elec.getSubimage(i*26,32,26,32);
            }

            elecAttackR = new BufferedImage[6];
            for(int i=0;i<6;i++){
                elecAttackR[i] = elec.getSubimage(i*26,64,26,32);
            }

            elecMoveL = new BufferedImage[4];
            for(int i=0;i<4;i++){
                elecMoveL[i] = elec.getSubimage(130-i*26,128,26,32);
            }

            elecAttackL = new BufferedImage[6];
            for(int i=0;i<6;i++){
                elecAttackL[i] = elec.getSubimage(130-i*26,160,26,32);
            }
        }   catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateE(){
        super.direction();

        if (hp == 0) alive = false;

        if (alive) {
            drawX = -gp.player.x + gp.player.screenX + eSX + sx;
            x=eSX+sx;
            drawY = -gp.player.y + gp.player.screenY + eSY + sy;
            y=eSY+sy;
        }
        bodyAreaA = new Rectangle(drawX + 4, drawY + 6, 80, 108);
        bodyAreaC = new Rectangle(x + 4, y + 6, 80, 108);
        centerX = bodyAreaA.x + bodyAreaA.width / 2;
        centerY = bodyAreaA.y + bodyAreaA.height / 2;
        distanceX = centerScreenX - centerX;
        distanceY = centerScreenY - centerY;
        distance = Math.sqrt(distanceX * distanceX + distanceY * distanceY);
        if (distance < 300){
            saw = true;
        }
        if(saw) {
            super.saw();
        }
        super.updateE();
        if (move && alive && !hurt&&!isAttack) {
            saw = false;
            super.move();
        }
        mCounter++;
        if (mCounter >= 15) {
            mCounter = 0;
            mNum++;
            if (mNum >= 3) mNum = 0;
        }
        coolDown++;
        if(coolDown>=300){
            coolDown=0;
            isAttack =true;
        }
        if(isAttack) attack();
        if(shockBall!=null)shockBall.update();
    }

    public void attack(){
        move=false;
        aCounter++;
        if(aCounter>=10){
            aCounter=0;
            aNum++;
            if(aNum==4) {
                dx = distanceX / distance;
                dy = distanceY / distance;
                shockBall = new ShockBall(gp, bodyAreaC.x+44, bodyAreaC.y+ 36, dx,dy,true);

            }
            if(aNum>=5){
                aNum=0;
                isAttack=false;
                move=true;
            }
        }
    }

    public void draw(Graphics2D g2){
        Move = null;
        Attack = null;
        switch (eD) {
            case "L":
                Attack = elecAttackL[aNum];
                Move = elecMoveL[mNum];
                break;
            case "R":
                Attack = elecAttackR[aNum];
                Move = elecMoveR[mNum];
                break;
        }
             if(!isAttack)g2.drawImage(Move, drawX, drawY, Move.getWidth() * gp.scale, Move.getHeight() * gp.scale, null);
            if (isAttack) {
                g2.drawImage(Attack, drawX, drawY, Attack.getWidth() * gp.scale, Attack.getHeight() * gp.scale, null);
            }
        if(shockBall!=null)shockBall.draw(g2,shockBall.pjNum);
    }
}
