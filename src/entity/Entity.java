package entity;

import main.GamePanel;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;

public class Entity {
    //player
    public int drawX, drawY;
    public int shadowX, shadowY;//bóng
    public String direction;//hươớng nhân vật
    public String atkDirection;//hướng tấn công
    public int x, y;//toạ độ nhân vật
    public boolean pAlive = true;//trạng thái sống
    public int speed, cspeed, currentSpeed;
    public double acceleration;
    public String uD, lR;//huong de xac dinh anh trc khi dung
    public int mana;
    public String collisionCheck;//kiểm tra va chạm

    //ảnh
    public BufferedImage[] up, upl, left, right;
    public BufferedImage standr, standl, standUR, standUL;
    public BufferedImage shadow;
    public BufferedImage[] attackR, attackL, attackUR, attackUL;
    public BufferedImage[] swordU, swordD, swordL, swordR, swordUL;
    public BufferedImage[] sliceU, sliceD, sliceL, sliceR, sliceUL;
    BufferedImage[] thinkR, thinkL;
    BufferedImage[] rollUpR, rollUpL, rollR, rollL;
    BufferedImage heart, heartE, heartH;


    public int spriteCounter = 0, nMCounter = 0;
    //public int sCounter;
    public int spriteNum = 0, nMNum = 0;
    public int attackCounter = 0;
    public int attackNum = 0;

    public boolean isMoving = false;
    public boolean isAttack = false;
    public boolean isThink = false;
    public int sliceCounter = 0;
    public int sliceNum = 0;
    public Rectangle solidArea = new Rectangle(0, 0, 48, 48);
    public int solidAreaDefaultX, solidAreaDefaultY;
    public int screenX, screenY;
    public Rectangle attackAreaU, attackAreaD, attackAreaR, attackAreaL;
    public boolean collisionOn = false, collisionL = false, collisionR = false, collisionU = false, collisionD = false;

    public int thinkCounter = 0;
    public int thinkNum = 0;
    public boolean isRolling = false;
    public int rollingCounter = 0;
    public int rollingNum = 0;

    public boolean pToECU, pToECD, pToECR, pToECL;
    public int maxHP, currentHP;

    public int invisibleTime = 0, iT = 0;
    public boolean invisible, canAttack;
    //player

    //ênmies
    //public final int screenX, screenY;
    private float transparency = 1.0f;
    private final float TRANSPARENCY_STEP = 0.5f;
    public double xMove = 0, yMove = 0, distance, dx, dy;
    public int eSpeed;
    //public BufferedImage shadow;
    public Rectangle bodyAreaA, bodyAreaC;
    public int sx, sy;
    public int eSX = 0, eSY = 0;
    public boolean attacking = true, alive = true, hurt = false;
    public int eCounter = 0, eNum = 0, dlNum = 0, dlS = 6, sawCounter = 0, sawW = 0, sawH = 0, cX = 0, cY = 0;
    public int hp;
    public int atkCounter;
    BufferedImage[] spark;
    public int sparkCounter = 0, sparkNum = 0;
    public String eD = "L", mD = "L";
    BufferedImage slimeI, exclamation;
    public boolean sp = false;
    public boolean eCollision = false, eCollisionR = false, eCollisionL = false, eCollisionU = false, eCollisionD = false;
    public boolean saw, move = false, chamThan = false;
    public boolean eToPCU, eToPCD, eToPCL, eToPCR;
    public BufferedImage[] slimeR, slimeL, sL, sR;
    //public Rectangle attackAreaU, attackAreaD, attackAreaR, attackAreaL;
    //public int  nMNum = 0;//no move

    public boolean moved;
    public int distanceX, distanceY;
    public int centerX, centerY;
    final int centerScreenX = 512, centerScreenY = 288;

    //enemies


    public BufferedImage up1, up2, down1, down2, left1, left2, right1, right2;
    public int worldX, worldY;
    public int defaultX = worldX, defaultY = worldY;
    public int acTionCounter = 0;
    GamePanel gp;

    public Entity(GamePanel gp) {
        this.gp = gp;
        bodyAreaA = new Rectangle();
        bodyAreaC = new Rectangle();
        screenX = gp.screenWidth / 2 - gp.tileSize / 2;
        screenY = gp.screenHeight / 2 - gp.tileSize / 2;
        direction = "down";
    }

    public BufferedImage setup(String imagePath, int width, int height) {
        BufferedImage image = null;
        try {
            image = ImageIO.read(getClass().getResourceAsStream(imagePath));
            Image scaledImage = image.getScaledInstance(width, height, Image.SCALE_SMOOTH);
            image = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);
            Graphics2D g2d = image.createGraphics();
            g2d.drawImage(scaledImage, 0, 0, width, height, null);
            g2d.dispose();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return image;
    }

    public void setAction() {
    }

    ;

    public void update() {
        //setAction();
        //collisionOn = false;
//        if(collisionOn==false){
//            switch (direction){
//                case "up":
//                    worldY-=speed;
//                    if(defaultY - worldY > speed * 2) collisionOn = true;
//                    break;
//                case "down":
//                    worldY+=speed;
//                    if(worldY - defaultY > speed * 2) collisionOn = true;
//                    break;
//                case "left":
//                    worldX-=speed;
//                    if(defaultX - worldX > speed * 2) collisionOn = true;
//                    break;
//                case "right":
//                    worldX+=speed;
//                    if(worldX - defaultX > speed * 2) collisionOn = true;
//                    break;
//            }
//            System.out.println(collisionOn);
//        }
//        System.out.println(collisionOn);
        spriteCounter++;
        if (spriteCounter == 12) {
            if (spriteNum == 0) {
                spriteNum += 1;
            } else if (spriteNum == 1) {
                spriteNum -= 1;
            }
            spriteCounter = 0;
        }

    }

    public void updateE() {

//        if (alive) {
//            drawX = -gp.player.x + gp.player.screenX + eSX + sx;
//            x=eSX+sx;
//            drawY = -gp.player.y + gp.player.screenY + eSY + sy;
//            y=eSY+sy;
//        }
//        bodyAreaA = new Rectangle(drawX + 16, drawY + 36, 52, 52);
//        bodyAreaC = new Rectangle(x + 16, y + 36, 52, 52);
//        centerX = bodyAreaA.x + bodyAreaA.width / 2;
//        centerY = bodyAreaA.y + bodyAreaA.height / 2;
//        distanceX = centerScreenX - centerX;
//        distanceY = centerScreenY - centerY;
//        distance = Math.sqrt(distanceX * distanceX + distanceY * distanceY);
//        if (distance < 300){
//            saw = true;
//        }
        attacking = false;
        gp.attackChecker.attackChecker(this);

        eToPCU = false;
        eToPCD = false;
        eToPCL = false;
        eToPCR = false;
        if (!gp.player.invisible) gp.collisionChecker.eToPCo(this);
        if (eToPCR || eToPCL || eToPCD || eToPCU) gp.player.invisible = true;
    }

    public void Hurt() {
        switch (gp.player.atkDirection) {
            case "attackUp":
                mD = "U";
                break;
            case "attackDown":
                mD = "D";
                break;
            case "attackR":
                mD = "R";
                break;
            case "attackL":
                mD = "L";
                break;
        }
        dlNum++;
        switch (gp.player.atkDirection) {
            case "attackUp":
                if (!eCollision) eSY--;
                break;
            case "attackDown":
                if (!eCollision) eSY++;
                break;
            case "attackR":
                if (!eCollision) eSX++;
                break;
            case "attackL":
                if (!eCollision) eSX--;
                break;
        }
        if (dlNum % 5 == 0) {
            dlS--;
            if (dlNum == 30) {

                dlS = 6;
            }
        }
    }

    public void saw() {
        if (!moved && sawCounter < 60) {
            sawCounter++;
            chamThan = true;
            if (sawW < 20) {
                sawW += 2;
                sawH += 4;
                cX++;
                cY += 2;
            }
        } else if (sawCounter == 60) {
            sawCounter = 0;
            move = true;
            moved = true;
            chamThan = false;
        }
    }

    public void move() {
        if (distance != 0) {
            dx = (centerScreenX - centerX) / distance;
            dy = (centerScreenY - centerY) / distance;
        }
        if (dx > 0) eD = "R";
        else eD = "L";

        xMove += dx * eSpeed;
        yMove += dy * eSpeed;
        eCollision = false;
        eCollisionR = false;
        eCollisionL = false;
        eCollisionU = false;
        eCollisionD = false;
        gp.collisionChecker.checkTileEnemies(this);

        // if (!eCollision && !eCollisionL && !eCollisionR)
        eSX += (int) xMove;
        //if (!eCollision && !eCollisionD && !eCollisionU)
        eSY += (int) yMove;

        xMove -= (int) xMove;
        yMove -= (int) yMove;

        sawW = 0;
        sawH = 0;
        cX = 0;
        cY = 0;

    }

    public void attacked() {
        if (attacking && hp != 0) {
            hurt = true;
            if (atkCounter == 0) {
                if (hp > 1)
                    gp.playSoundEffect(0);
                hp--;
                atkCounter = 1;
                transparency -= TRANSPARENCY_STEP;
                if (transparency < 0.0f) {
                    transparency = 0.0f;
                }
            }
            sparkCounter++;
            if (sparkCounter % 7 == 0) {
                sparkNum++;
            }
            if (hp == 0) {
                sp = true;
                gp.playSoundEffect(4);
            }
        } else {
            transparency += TRANSPARENCY_STEP;
            if (transparency > 1.0f) {
                transparency = 1.0f;
            }
        }

        if (!attacking) {
            sparkCounter = 0;
            sparkNum = 0;
            atkCounter = 0;
        }

//        if (sp) {
//            sparkCounter++;
//            if (sparkCounter % 7 == 0) {
//                sparkNum++;
//            }
//            if (sparkNum == 2) {
//                sparkCounter = 0;
//                sparkNum = 0;
//                sp = false;
//            }
//        }
    }

    public void direction() {
        if (centerX > (gp.screenWidth / 2)) {
            mD = "L";
            if (centerY > (gp.screenHeight / 2)) {
                mD = "LU";
            } else if (centerY < (gp.screenHeight / 2)) {
                mD = "LD";
            }
        } else if (centerX < (gp.screenWidth / 2)) {
            mD = "R";
            if (centerY > (gp.screenHeight / 2)) {
                mD = "RU";
            } else if (centerY < (gp.screenHeight / 2)) {
                mD = "RD";
            }
        } else {
            if (x > screenY) {
                mD = "U";
            } else if (y < screenY) {
                mD = "D";
            }
        }
    }

    public void draw(Graphics2D g2) {
        BufferedImage image = null;
        x = worldX - gp.player.x + gp.player.screenX;
        y = worldY - gp.player.y + gp.player.screenY;

        //if (worldX + gp.tileSize > gp.player.worldX - gp.player.screenX && worldX - gp.tileSize < gp.player.worldX + gp.player.screenX && worldY + gp.tileSize > gp.player.worldY - gp.player.screenY && worldY - gp.tileSize < gp.player.worldY + gp.player.screenY) {
        switch (direction) {
            case "up":
                if (spriteNum == 0) {
                    image = up1;
                }
                if (spriteNum == 1) {
                    image = up2;
                }
                break;
            case "down": // Trường hợp mới cho NPC đứng yên
                if (spriteNum == 0) {
                    image = down1;
                }
                if (spriteNum == 1) {
                    image = down2;
                }
                break;
            case "left":
                if (spriteNum == 0) {
                    image = left1;
                }
                if (spriteNum == 1) {
                    image = left2;
                }
                break;
            case "right":
                if (spriteNum == 0) {
                    image = right1;
                }
                if (spriteNum == 1) {
                    image = right2;
                }
                break;
        }

        if (image != null) {
            g2.drawImage(image, x, y, gp.tileSize, gp.tileSize, null);
        }
        //}
    }

    public void reset() {
        eSX = 0;
        eSY = 0;
        alive = true;
        saw = false;
        move = false;
        sawCounter = 0;
        sawW = 0;
        sawH = 0;
        cX = 0;
        cY = 0;
        chamThan = false;
        moved = false;
    }

}
