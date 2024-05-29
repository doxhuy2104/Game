package entity;

import main.GamePanel;
import projectile.ShockBall;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Objects;
import java.util.Random;

@SuppressWarnings("ALL")
public class Electronic extends Entity {
    GamePanel gp;
    public ShockBall shockBall;
    BufferedImage[] elecMoveR, elecAttackR, elecMoveL, elecAttackL;
    BufferedImage Move, Attack;
    boolean isAttack =false,breaking = false;
    int mCounter,mNum,aCounter,aNum,coolDown=0,randCD;
    Random rand=new Random();
    int hurtCounter = 0,hurtNum = 0,brNum = 0,brCounter = 0;
    public Electronic(GamePanel gp) {
        super(gp);
        this.gp = gp;

        getElecImage();

        hp=15;
        alive=true;
        eSpeed=0.5;
    }

    public void getElecImage() {
        try {
            BufferedImage elec = ImageIO.read(Objects.requireNonNull(getClass().getResource("/enemies/cloudSpirit.png")));

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
            shadow = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/enemies/enemyMed.png")));

        }   catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateE(){
        super.direction();

        if (hp == 0) {
            alive = false;
            Player.aliveBoss--;
        }

        if (alive) {
            drawX = -gp.player.x + gp.player.screenX + eSX + sx;
            x=eSX+sx;
            drawY = -gp.player.y + gp.player.screenY + eSY + sy;
            y=eSY+sy;
        }
        bodyAreaA = new Rectangle(drawX +4, drawY + 6, 80, 100);
        bodyAreaC = new Rectangle(x + 4, y + 6, 80, 120);
        centerX = bodyAreaA.x + bodyAreaA.width / 2;
        centerY = bodyAreaA.y + bodyAreaA.height / 2;
        distanceX = centerScreenX - centerX;
        distanceY = centerScreenY - centerY;
        distance = Math.sqrt(distanceX * distanceX + distanceY * distanceY);
        if (distance < 300){
            saw = true;
        }
        super.updateE();

        if (hurt) {
            super.Hurt();
            if (dlNum == 30) {
                move = true;
                hurt = false;
                dlNum = 0;
            }
            hurtCounter++;
            if (hurtCounter % 5 == 0 && hurtNum < 4) {
                hurtNum++;
            }
            if (hurtCounter == 30) {
                hurtNum = 0;
                hurtCounter = 0;
                hurt = false;
                move = true;
            }
        }

        if (saw) super.saw();

        if (move && alive && !hurt&&!isAttack) {
            super.move();
            eCounter++;
            if (eCounter % 8 == 0 && eNum < 5) {
                eNum++;
            }
            if (eCounter == 40) {
                eNum = 0;
            }
            if (eCounter == 80) {
                eNum = 0;
                eCounter = 0;
                dx = (centerScreenX - centerX) / distance;
                dy = (centerScreenY - centerY) / distance;
            }
        }
        if(!isAttack) {
            mCounter++;
            if (mCounter >= 15) {
                mCounter = 0;
                mNum++;
                if (mNum >= 3) mNum = 0;
            }
            if(coolDown==0) randCD=rand.nextInt(241)+60;
            coolDown++;
            if (coolDown >= randCD) {
                coolDown = 0;
                isAttack = true;
            }
        }
        super.attacked();
        if (hp == 0 && alive) {
            breaking = true;
        }
        if (breaking) {
            move = false;
            hurt = false;
            brCounter++;
            if (brCounter % 5 == 0 && brNum < 6) {
                brNum++;
            }
            if (brCounter == 35) {
                brNum = 0;
                brCounter = 0;
                breaking = false;
                alive = false;
                dlNum = 0;
            }
        }
        if(isAttack) attack();
        if(shockBall!=null) shockBall.update();
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
                shockBall = new ShockBall(gp, bodyAreaC.x+44, bodyAreaC.y+ 36, dx,dy,false,false,true);

            }
            if(aNum>=5){
                aNum=0;
                isAttack=false;
                move=true;
            }
        }
    }

    public void draw(Graphics2D g2) {
        if (alive) {
            g2.drawImage(shadow, drawX + 20, drawY + 130, gp.scale * shadow.getWidth(), gp.scale * shadow.getHeight(), null);

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
            if (!isAttack)
                g2.drawImage(Move, drawX, drawY, Move.getWidth() * gp.scale, Move.getHeight() * gp.scale, null);
            if (isAttack) {
                g2.drawImage(Attack, drawX, drawY, Attack.getWidth() * gp.scale, Attack.getHeight() * gp.scale, null);
            }
            if (shockBall != null) {
                if (shockBall.exist) shockBall.draw(g2, shockBall.pjNum);
                else if(shockBall.hitPlayer||shockBall.hitWall)shockBall.draw(g2, shockBall.hitNum);
                //
            }
        }
    }
}
