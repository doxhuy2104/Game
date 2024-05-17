package entity;

import main.GamePanel;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;

public class CaSau extends Entity {
    GamePanel gp;
    BufferedImage[] cMove, cAttack, cWake, cMoveL, cAttackL, cWakeL;
    BufferedImage cSleep, Wake, Move, Attack;
    int screenX, screenY;
    int mNum = 0, mCounter = 0, aCounter = 0, aNum = 0, wCounter = 0, wNum = 0, s = 0;
    boolean wake = false, attack = false, atk = false, canAttack = true;

    public CaSau(GamePanel gp) {
        super(gp);
        this.gp = gp;
        getCaSauImage();

        bodyAreaA = new Rectangle();
        bodyAreaC = new Rectangle();
        saw = false;
        hp = 5;
        eSpeed = 2;
        moved = false;

        eNum = 2;
        mD = "L";

        screenX = gp.screenWidth / 2 - gp.tileSize / 2;
        screenY = gp.screenHeight / 2 - gp.tileSize / 2;
        attackAreaU = new Rectangle(screenX - 7 * gp.scale, screenY - 10 * gp.scale, 136, 76);
        attackAreaL = new Rectangle(screenX - 15 * gp.scale, screenY - 9 * gp.scale, 76, 136);
        attackAreaD = new Rectangle(screenX - 9 * gp.scale, screenY + 15 * gp.scale, 136, 76);
        attackAreaR = new Rectangle(screenX + 13 * gp.scale, screenY - 8 * gp.scale, 76, 136);
    }

    public void getCaSauImage() {
        try {
            BufferedImage casau = ImageIO.read(getClass().getResourceAsStream("/enemies/carnivorock.png"));

            cMove = new BufferedImage[4];
            for (int i = 0; i < 4; i++) {
                cMove[i] = casau.getSubimage(i * 22, 22, 22, 22);
            }

            cMoveL = new BufferedImage[4];
            for (int i = 0; i < 4; i++) {
                cMoveL[i] = casau.getSubimage(66 - i * 22, 110, 22, 22);
            }

            cAttack = new BufferedImage[4];
            for (int i = 0; i < 4; i++) {
                cAttack[i] = casau.getSubimage(i * 22, 44, 22, 22);
            }

            cAttackL = new BufferedImage[4];
            for (int i = 0; i < 4; i++) {
                cAttackL[i] = casau.getSubimage(66 - i * 22, 132, 22, 22);
            }

            cSleep = casau.getSubimage(0, 66, 22, 22);
            cWake = new BufferedImage[2];
            for (int i = 0; i < 2; i++) {
                cWake[i] = casau.getSubimage(i * 22, 0, 22, 22);
            }

            cWakeL = new BufferedImage[2];
            for (int i = 0; i < 2; i++) {
                cWakeL[i] = casau.getSubimage(66 - i * 22, 88, 22, 22);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateE() {
        if (!attack) super.direction();

        if (hp == 0) alive = false;

        if (alive) {
            drawX = -gp.player.x + gp.player.screenX + eSX + sx;
            x=eSX+sx;
            drawY = -gp.player.y + gp.player.screenY + eSY + sy;
            y=eSY+sy;
        }
        bodyAreaA = new Rectangle(drawX + 16, drawY + 36, 52, 52);
        bodyAreaC = new Rectangle(x + 16, y + 36, 52, 52);
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
        }
        if (saw) {
            super.saw();
            if (!move) wake = true;
            if (wake) {
                wCounter++;
                if (wCounter >= 10) {
                    wCounter = 0;
                    wNum++;
                    if (wNum >= 2) {
                        wNum = 0;
                        wake = false;
                    }
                }
            }
        }
        if (move && alive && !hurt) {
            saw = false;
            super.move();
            mCounter++;
            if (mCounter >= 10) {
                mCounter = 0;
                mNum++;
                if (mNum >= 4) mNum = 0;
            }
        }
        super.attacked();
        if (!canAttack) {
            aCounter++;
            if (aCounter >= 30) {
                aCounter = 0;
                canAttack = true;
            }
        }
        if (distance < 150) if (move && canAttack) attack = true;
        if (attack) attack();
    }

    public void attack() {
        if (!atk) {
            dx = (centerScreenX - centerX) / distance;
            dy = (centerScreenY - centerY) / distance;
            atk = true;
        }
        if (aNum == 0) aCounter++;
        if (aCounter >= 10 && aNum == 0) {
            aCounter = 0;
            aNum = 1;
            move = false;
        }
        if (aNum == 1) aCounter++;
        if (aCounter >= 20) {
            aCounter = 0;
            aNum = 2;
        }
        if (aNum == 2) {
            xMove += dx * 13;
            yMove += dy * 13;
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
            s += 13;
            if (s > 130) {
                aCounter = 0;
                aNum = 3;
                s = 0;
            }
        }
        if (aNum == 3 || hurt) {
            aCounter++;
            if (aCounter >= 10 || hurt) {
                aNum = 0;
                aCounter = 0;
                attack = false;
                atk = false;
                move = true;
                canAttack = false;
            }
        }
    }

    @Override
    public void draw(Graphics2D g2) {
        Wake = null;
        Move = null;
        Attack = null;
        switch (eD) {
            case "L":
                Wake = cWakeL[wNum];
                Attack = cAttackL[aNum];
                Move = cMoveL[mNum];
                break;
            case "R":
                Wake = cWake[wNum];
                Attack = cAttack[aNum];
                Move = cMove[mNum];
                break;
        }
        if (alive) {
            if (!moved) {
                if (!saw) g2.drawImage(cSleep, drawX, drawY, 22 * gp.scale, 22 * gp.scale, null);
                else g2.drawImage(Wake, drawX, drawY, 22 * gp.scale, 22 * gp.scale, null);
            } else if (!attack) g2.drawImage(Move, drawX, drawY, 22 * gp.scale, 22 * gp.scale, null);
            if (attack) g2.drawImage(Attack, drawX, drawY, 22 * gp.scale, 22 * gp.scale, null);
        }
        g2.drawString("drawX: "+drawX+" drawY: "+drawY+" screenX: "+screenX+" screenY: "+screenY, 10, 100);
    }

    @Override
    public void reset() {
        super.reset();
        mNum = 0;
        hp = 5;
        attack=false;
        atk=false;
        aNum=0;
        aCounter=0;
    }
}
