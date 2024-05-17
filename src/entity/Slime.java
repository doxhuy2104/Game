package entity;

import main.GamePanel;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;

public class Slime extends Entity {
    GamePanel gp;
    public final int screenX, screenY;
    private float transparency = 1.0f;
    BufferedImage[] sMoveR, sJumpR, sMoveL, sJumpL, sHurtR, sHurtL, breakingR, breakingL;
    boolean jump = false, breaking = false;
    int hurtCounter = 0, hurtNum = 0, brCounter = 0, brNum = 0;

    public Slime(GamePanel gp) {
        super(gp);
        this.gp = gp;

        getSlimeImage();

        bodyAreaA = new Rectangle();
        bodyAreaC = new Rectangle();

        saw = false;
        hp = 5;
        eSpeed = 2;

        eNum = 2;
        mD = "L";

        screenX = gp.screenWidth / 2 - gp.tileSize / 2;
        screenY = gp.screenHeight / 2 - gp.tileSize / 2;
        attackAreaU = new Rectangle(screenX - 7 * gp.scale, screenY - 10 * gp.scale, 136, 76);
        attackAreaL = new Rectangle(screenX - 15 * gp.scale, screenY - 9 * gp.scale, 76, 136);
        attackAreaD = new Rectangle(screenX - 9 * gp.scale, screenY + 15 * gp.scale, 136, 76);
        attackAreaR = new Rectangle(screenX + 13 * gp.scale, screenY - 8 * gp.scale, 76, 136);
    }


    public void getSlimeImage() {
        try {
            exclamation = ImageIO.read(getClass().getResourceAsStream("/enemies/exclamation.png"));
            slimeL = new BufferedImage[4];
            slimeR = new BufferedImage[4];
            BufferedImage slimeSheet = ImageIO.read(getClass().getResourceAsStream("/enemies/slimeRed.png"));
            for (int i = 0; i < 4; i++) {
                slimeR[i] = slimeSheet.getSubimage(i * 16, 16, 16, 16);
                slimeL[i] = slimeSheet.getSubimage(48 - i * 16, 32, 16, 16);
            }


            shadow = ImageIO.read(getClass().getResourceAsStream("/enemies/enemySm.png"));

            spark = new BufferedImage[3];
            BufferedImage sparkSheet = ImageIO.read(getClass().getResourceAsStream("/attack/spark.png"));
            for (int i = 0; i < 3; i++) {
                spark[i] = sparkSheet.getSubimage(28 * i, 0, 28, 34);
            }

            BufferedImage slimeSheet2 = ImageIO.read(getClass().getResourceAsStream("/enemies/blueSlime copy.png"));
            sMoveR = new BufferedImage[6];
            for (int i = 0; i < 6; i++) {
                sMoveR[i] = slimeSheet2.getSubimage(i * 16, 8, 16, 24);
            }

            sJumpR = new BufferedImage[5];
            for (int i = 0; i < 5; i++) {
                sJumpR[i] = slimeSheet2.getSubimage(16 * 6 + i * 16, 8, 16, 24);
            }

            sMoveL = new BufferedImage[6];
            for (int i = 0; i < 6; i++) {
                sMoveL[i] = slimeSheet2.getSubimage(160 - i * 16, 40, 16, 24);
            }

            sJumpL = new BufferedImage[5];
            for (int i = 0; i < 5; i++) {
                sJumpL[i] = slimeSheet2.getSubimage(64 - i * 16, 40, 16, 24);
            }

            sR = new BufferedImage[2];
            sR[0] = slimeSheet2.getSubimage(192, 8, 16, 24);
            sR[1] = slimeSheet2.getSubimage(176, 8, 16, 24);

            sL = new BufferedImage[2];
            sL[0] = slimeSheet2.getSubimage(176, 40, 16, 24);
            sL[1] = slimeSheet2.getSubimage(192, 40, 16, 24);

            sHurtL = new BufferedImage[5];
            for (int i = 0; i < 5; i++) {
                sHurtL[i] = slimeSheet2.getSubimage(272 - i * 16, 40, 16, 24);
            }

            sHurtR = new BufferedImage[5];
            for (int i = 0; i < 5; i++) {
                sHurtR[i] = slimeSheet2.getSubimage(208 + i * 16, 8, 16, 24);
            }

            breakingL = new BufferedImage[7];
            for (int i = 0; i < 7; i++) {
                breakingL[i] = slimeSheet2.getSubimage(96 - i * 16, 104, 16, 24);
            }

            breakingR = new BufferedImage[7];
            for (int i = 0; i < 7; i++) {
                breakingR[i] = slimeSheet2.getSubimage(i * 16, 72, 16, 24);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void updateE() {
        if(!jump)super.direction();
        if (alive) {
            drawX = -gp.player.x + gp.player.screenX + eSX + sx;
            x=eSX+sx;
            drawY = -gp.player.y + gp.player.screenY + eSY + sy+56;
            y=eSY+sy;
        }
        bodyAreaA = new Rectangle(drawX + 4, drawY , 56, 40);//cap nhat tao do phan than quai vat
        bodyAreaC = new Rectangle(x + 4, y + 56, 56, 40);//cap nhat tao do phan than quai vat
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
            move = false;
            super.Hurt();
            jump = false;
            eCounter = 0;
            eSpeed = 2;
            eNum = 0;
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
        if (move && alive && !hurt) {
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
                jump = true;
                dx = (centerScreenX - centerX) / distance;
                dy = (centerScreenY - centerY) / distance;
            }
        }
        if (jump) jump();

        if (!move && !jump) {
            nMCounter++;
            if (nMCounter % 20 == 0 && nMNum < 1) {
                nMNum++;
            }
            if (nMCounter == 40) {
                nMNum = 0;
                nMCounter = 0;
            }
        }
        super.attacked();
        if (hp == 0 && alive) {
            breaking = true;
        }
        if (breaking) {
            move = false;
            jump = false;
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
    }

    void jump() {
        move = false;

        eCounter++;
        if (eCounter % 10 == 0 && eNum < 4) {
            eNum++;
            if (eNum == 0) eSpeed = 0;
            else eSpeed = 5;
        }
        if (eCounter == 40) {
            eNum = 0;
            eCounter = 0;
            jump = false;
            eSpeed = 2;
            move = true;
        }
        xMove += dx * eSpeed;
        yMove += dy * eSpeed;
        eCollision = false;
        eCollisionR = false;
        eCollisionL = false;
        eCollisionU = false;
        eCollisionD = false;
        gp.collisionChecker.checkTileEnemies(this);
        //if (!eCollision && !eCollisionL && !eCollisionR)
            eSX += (int) xMove;
        //if (!eCollision && !eCollisionD && !eCollisionU)
            eSY += (int) yMove;
        xMove -= (int) xMove;
        yMove -= (int) yMove;
    }

    @Override
    public void draw(Graphics2D g2) {
        g2.setColor(Color.WHITE);
        if (alive) {
            g2.drawImage(shadow, x + 7, y + 48, gp.scale * shadow.getWidth(), gp.scale * shadow.getHeight(), null);
            g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, transparency));
            if (chamThan) g2.drawImage(exclamation, drawX + 33 - cX, drawY - cY, sawW, sawH, null);
            if (move) {
                switch (eD) {
                    case "L":
                        slimeI = sMoveL[eNum];
                        break;
                    case "R":
                        slimeI = sMoveR[eNum];
                        break;
                }
                g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 1.0f));

            } else if (jump) switch (eD) {
                case "L":
                    slimeI = sJumpL[eNum];
                    break;
                case "R":
                    slimeI = sJumpR[eNum];
                    break;
            }
            else if (hurt) {
                switch (eD) {
                    case "L":
                        slimeI = sHurtL[hurtNum];
                        break;
                    case "R":
                        slimeI = sHurtR[hurtNum];
                        break;
                }
            } else if (breaking) {
                switch (eD) {
                    case "L":
                        slimeI = breakingL[brNum];
                        break;
                    case "R":
                        slimeI = breakingR[brNum];
                        break;
                }
            } else {
                switch (eD) {
                    case "L":
                        slimeI = sL[nMNum];
                        break;
                    case "R":
                        slimeI = sR[nMNum];
                        break;
                }
            }
            g2.drawImage(slimeI, drawX, drawY-56, gp.scale * slimeI.getWidth(), gp.scale * slimeI.getHeight(), null);
        }

//        if (attacking && alive || sp) {
//            g2.drawImage(spark[sparkNum], eX - 24, eY - 36, gp.scale * spark[sparkNum].getWidth(), gp.scale * spark[sparkNum].getHeight(), null);
//        }
    }

    @Override
    public void reset() {
        super.reset();
    }
}
