package entity;

import environment.LightingManager;
import main.GamePanel;
import main.KeyHandler;
import main.MouseClickListener;
import object.*;
import projectile.FlameAttack;
import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import tile.TileManager;

@SuppressWarnings("ALL")
public class Player extends Entity {
    KeyHandler keyH;
    MouseClickListener mouseClick;
    // public final int screenX, screenY;
    int mouseX, mouseY;
    boolean invi = true;
    private boolean rM = false, aM = false, sM = false;
    int sMC = 0, aMC = 0, rMC = 0, mC = 0;
    public boolean canSprint;
    int hasKey = 0,hasKeyDoor=3;
    int appearBoss = 0;
    public boolean boost;
    public boolean isHurt;
    public List<FlameAttack> flames = new ArrayList<>();
    public boolean isShootingFlame = false;
    public boolean isUsingFlame = false;
    public boolean usingFlame = false;
    public int abs(int x) {
        return x >= 0 ? x : -x;
    }
    public static int aliveBoss;

    public boolean OpenDoorWin = false;
    public boolean oneOfTime = true;

    public Player(GamePanel gp, KeyHandler keyH, MouseClickListener mouseC) {
        super(gp);
        this.gp = gp;

        this.keyH = keyH;
        this.mouseClick = mouseC;

        drawX=screenX = gp.screenWidth / 2 - gp.tileSize / 2;
        drawY=screenY = gp.screenHeight / 2 - gp.tileSize / 2;
        mana = 100;


        solidArea = new Rectangle(8, 32, 48, 32);
        solidAreaDefaultX = solidArea.x;
        solidAreaDefaultY = solidArea.y;
        attackAreaU = new Rectangle(screenX - 7 * gp.scale, screenY - 10 * gp.scale, 136, 90);
        attackAreaL = new Rectangle(screenX - 15 * gp.scale, screenY - 9 * gp.scale, 90, 136);
        attackAreaD = new Rectangle(screenX - 17 * gp.scale, screenY + 15 * gp.scale , 136, 90);
        attackAreaR = new Rectangle(screenX + 13 * gp.scale , screenY - 8 * gp.scale, 90, 136);

        setDefaultValues();
    }

    public void setDefaultValues() {

        uD = "D";
        lR = "R";
        direction = "down";
        collisionCheck = "down";
        isAttack = false;
        currentHP = maxHP = 10;
        pAlive = true;
        canAttack = true;
    }

    public void getPlayerImage() {
        try {
            BufferedImage spriteSheet = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/entity/full.png")));
            up = new BufferedImage[6];
            upl = new BufferedImage[6];
            left = new BufferedImage[6];
            right = new BufferedImage[6];

            BufferedImage full2 = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/entity/full2.png")));
            standUR = full2.getSubimage(90, 129, 16, 16);
            standUL = full2.getSubimage(73, 171, 16, 16);
            thinkR = new BufferedImage[8];
            thinkR[0] = full2.getSubimage(0, 150, 16, 16);

            rollUpR = new BufferedImage[7];
            for (int i = 0; i < 7; i++) {
                rollUpR[i] = full2.getSubimage(18 * i, 108, 16, 16);
            }

            rollR = new BufferedImage[7];
            for (int i = 0; i < 7; i++) {
                rollR[i] = full2.getSubimage(18 * i, 87, 16, 16);
            }

            rollL = new BufferedImage[7];
            for (int i = 0; i < 7; i++) {
                rollL[i] = full2.getSubimage(108 - 18 * i, 338, 16, 16);
            }

            rollUpL = new BufferedImage[7];
            for (int i = 0; i < 7; i++) {
                rollUpL[i] = full2.getSubimage(108 - 18 * i, 359, 16, 16);
            }

            thinkL = new BufferedImage[8];
            for (int i = 0; i < 8; i++) {
                thinkL[i] = full2.getSubimage(128 - 18 * i, 317, 16, 16);
            }
            standr = thinkR[0];
            standl = thinkL[0];
            for (int i = 1; i < 8; i++) thinkR[i] = full2.getSubimage(18 * i, 150, 16, 16);

            shadow = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/entity/playerShadow.png")));

            BufferedImage attackSheet = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/full.png")));
            attackR = new BufferedImage[3];
            attackR[0] = attackSheet.getSubimage(0, 45, 16, 16);
            attackR[1] = attackSheet.getSubimage(18, 45, 16, 16);
            attackR[2] = attackSheet.getSubimage(36, 45, 16, 16);

            attackUR = new BufferedImage[3];
            attackUR[0] = attackSheet.getSubimage(0, 66, 16, 16);
            attackUR[1] = attackSheet.getSubimage(18, 66, 16, 16);
            attackUR[2] = attackSheet.getSubimage(36, 66, 16, 16);

            attackUL = new BufferedImage[3];
            attackUL[0] = attackSheet.getSubimage(144, 24, 16, 16);
            attackUL[1] = attackSheet.getSubimage(126, 24, 16, 16);
            attackUL[2] = attackSheet.getSubimage(108, 24, 16, 16);

            attackL = new BufferedImage[3];
            attackL[2] = attackSheet.getSubimage(108, 3, 16, 16);
            attackL[1] = attackSheet.getSubimage(126, 3, 16, 16);
            attackL[0] = attackSheet.getSubimage(144, 3, 16, 16);

            BufferedImage sliceDSheet = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/sliceD.png")));
            sliceD = new BufferedImage[5];
            sliceD[4] = sliceD[3] = sliceD[0] = sliceDSheet.getSubimage(21, 21, 16, 16);
            sliceD[1] = sliceDSheet.getSubimage(3, 2, 34, 19);
            sliceD[2] = sliceDSheet.getSubimage(3, 25, 34, 19);

            BufferedImage sliceRSheet = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/sliceR.png")));
            sliceR = new BufferedImage[5];
            sliceR[4] = sliceR[3] = sliceR[0] = sliceDSheet.getSubimage(21, 21, 16, 16);
            sliceR[1] = sliceRSheet.getSubimage(2, 2, 19, 34);
            sliceR[2] = sliceRSheet.getSubimage(25, 2, 19, 34);

            BufferedImage sliceUSheet = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/sliceU.png")));
            sliceU = new BufferedImage[5];
            sliceU[4] = sliceU[3] = sliceU[0] = sliceDSheet.getSubimage(21, 21, 16, 16);
            sliceU[1] = sliceUSheet.getSubimage(2, 25, 34, 19);
            sliceU[2] = sliceUSheet.getSubimage(2, 2, 34, 19);

            BufferedImage sliceULSheet = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/sliceUL.png")));
            sliceUL = new BufferedImage[5];
            sliceUL[4] = sliceUL[3] = sliceUL[0] = sliceDSheet.getSubimage(21, 21, 16, 16);
            sliceUL[1] = sliceULSheet.getSubimage(2, 25, 34, 19);
            sliceUL[2] = sliceULSheet.getSubimage(2, 2, 34, 19);

            BufferedImage sliceLSheet = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/sliceL.png")));
            sliceL = new BufferedImage[5];
            sliceL[4] = sliceL[3] = sliceL[0] = sliceDSheet.getSubimage(21, 21, 16, 16);
            sliceL[1] = sliceLSheet.getSubimage(25, 3, 19, 34);
            sliceL[2] = sliceLSheet.getSubimage(2, 3, 19, 34);

            swordD = new BufferedImage[4];
            swordD[0] = sliceDSheet.getSubimage(21, 21, 16, 16);
            swordD[1] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordD.png")));
            swordD[2] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordD.png")));
            swordD[3] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordD.png")));


            swordU = new BufferedImage[4];
            swordU[0] = sliceDSheet.getSubimage(21, 21, 16, 16);
            swordU[1] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordU.png")));
            swordU[2] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordU.png")));
            swordU[3] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordU.png")));

            swordUL = new BufferedImage[4];
            swordUL[0] = sliceDSheet.getSubimage(21, 21, 16, 16);
            swordUL[1] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordUL.png")));
            swordUL[2] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordUL.png")));
            swordUL[3] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordUL.png")));

            swordR = new BufferedImage[4];
            swordR[0] = sliceDSheet.getSubimage(21, 21, 16, 16);
            swordR[1] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordR.png")));
            swordR[2] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordR.png")));
            swordR[3] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordR.png")));


            swordL = new BufferedImage[4];
            swordL[0] = sliceDSheet.getSubimage(21, 21, 16, 16);
            swordL[1] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordL.png")));
            swordL[2] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordL.png")));
            swordL[3] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/attack/swordL.png")));


            for (int i = 0; i < 6; i++) {
                int x = 2 + 18 * i;
                up[i] = spriteSheet.getSubimage(x, 21, 16, 16);
            }
            for (int i = 0; i < 6; i++) {
                int x = 2 + 18 * i;
                upl[i] = spriteSheet.getSubimage(x, 63, 16, 16);
            }
            for (int i = 0; i < 6; i++) {
                int x = 2 + 18 * i;
                left[i] = spriteSheet.getSubimage(x, 42, 16, 16);
            }
            for (int i = 0; i < 6; i++) {
                int x = 2 + 18 * i;
                right[i] = spriteSheet.getSubimage(x, 0, 16, 16);
            }

            heart = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/UI/heart.png")));
            heartE = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/UI/heart-empty.png")));
            heartH = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/UI/heart-half.png")));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public boolean pickUpObj(int i) {
        healTime++;
        if ((currentHP < maxHP) && (healTime%120 == 0)){
            if((GamePanel.col == 34) && (GamePanel.row == 4)) currentHP++;
            if((GamePanel.col == 35) && (GamePanel.row == 4)) currentHP++;
            if((GamePanel.col == 34) && (GamePanel.row == 5)) currentHP++;
            if((GamePanel.col == 35) && (GamePanel.row == 5)) currentHP++;
            healTime = 0;
        }

        if ((OpenDoorWin)){
            if((GamePanel.col == 58) && (GamePanel.row == 20)) gp.uiManager.gameO = true;
            if((GamePanel.col == 59) && (GamePanel.row == 20)) gp.uiManager.gameO = true;
            if((GamePanel.col == 60) && (GamePanel.row == 20)) gp.uiManager.gameO = true;
            if((GamePanel.col == 61) && (GamePanel.row == 20)) gp.uiManager.gameO = true;
        }

        if (LightingManager.opacity > 0.0f){
            if((GamePanel.col == 19) && (GamePanel.row == 37)) LightingManager.opacity = 0.0f;
            if((GamePanel.col == 19) && (GamePanel.row == 38)) LightingManager.opacity = 0.0f;
        }

        if(aliveBoss == 0){
            TileManager.mapTileNum[59][40] = 0;
            TileManager.mapTileNum[60][40] = 0;
            TileManager.mapTileNum[61][40] = 0;
        }

        //Vao map danh quai
        if((GamePanel.col == 31) && (GamePanel.row == 37) ||
                (GamePanel.col == 31) && (GamePanel.row == 38)){

            if(gp.slime[4] == null) {
                gp.obj[12] = new objectCuaDoc();
                gp.obj[12].worldX = 30 * gp.tileSize;
                gp.obj[12].worldY = 37 * gp.tileSize;

                TileManager.mapTileNum[30][37] = 1;
                TileManager.mapTileNum[30][38] = 1;

                gp.obj[13] = new objectCuaDoc();
                gp.obj[13].worldX = 39 * gp.tileSize;
                gp.obj[13].worldY = 23 * gp.tileSize;

                gp.slime[4] = new Slime(gp);
                gp.slime[4].sx = 35 * gp.tileSize;
                gp.slime[4].sy = 27 * gp.tileSize;

                gp.slime[5] = new Slime(gp);
                gp.slime[5].sx = 33 * gp.tileSize;
                gp.slime[5].sy = 27 * gp.tileSize;

                gp.slime[6] = new Slime(gp);
                gp.slime[6].sx = 35 * gp.tileSize;
                gp.slime[6].sy = 31 * gp.tileSize;

                gp.slime[7] = new Slime(gp);
                gp.slime[7].sx = 33 * gp.tileSize;
                gp.slime[7].sy = 31 * gp.tileSize;
            }
        }

        if (gp.slime[4] != null) {
            if (gp.slime[4].hp <= 0 &&
                    gp.slime[5].hp <= 0 &&
                    gp.slime[6].hp <= 0 &&
                    gp.slime[7].hp <= 0 &&
                    gp.caSau[4] == null) {
                gp.caSau[4] = new CaSau(gp);
                gp.caSau[4].sx = 35 * gp.tileSize;
                gp.caSau[4].sy = 27 * gp.tileSize;

                gp.caSau[5] = new CaSau(gp);
                gp.caSau[5].sx = 33 * gp.tileSize;
                gp.caSau[5].sy = 27 * gp.tileSize;

                gp.caSau[6] = new CaSau(gp);
                gp.caSau[6].sx = 35 * gp.tileSize;
                gp.caSau[6].sy = 31 * gp.tileSize;

                gp.caSau[7] = new CaSau(gp);
                gp.caSau[7].sx = 33 * gp.tileSize;
                gp.caSau[7].sy = 31 * gp.tileSize;
            }
        }

        if(gp.caSau[4] != null) {
            if (gp.caSau[4].hp <= 0 &&
                    gp.caSau[5].hp <= 0 &&
                    gp.caSau[6].hp <= 0 &&
                    gp.caSau[7].hp <= 0) {

                gp.obj[12] = null;
                TileManager.mapTileNum[30][37] = 0;
                TileManager.mapTileNum[30][38] = 0;

                gp.obj[13] = null;
                TileManager.mapTileNum[39][23] = 0;
                TileManager.mapTileNum[39][24] = 0;

                gp.obj[39] = null;
                TileManager.mapTileNum[34][20] = 0;
                TileManager.mapTileNum[35][20] = 0;
            }
        }

        if (i != 999) {

            String objName = gp.obj[i].name;
            switch (objName) {
                case "DoorHelpPrincess":
                    if(oneOfTime) {
                        gp.playSoundEffect(11);
                        oneOfTime = false;
                    }

                    if(healTime % 120 == 0) oneOfTime = true;

                    break;
                case "SwitchOff":
                    if(LightingManager.opacity == 0.0f){
                        gp.playSoundEffect(1);
                        gp.obj[15] = null;
                        gp.obj[18] = null;
                        gp.obj[19] = new objectSwitchOn();
                        gp.obj[19].worldX = 6 * gp.tileSize;
                        gp.obj[19].worldY = gp.tileSize;
                        TileManager.mapTileNum[3][20] = 0;
                        TileManager.mapTileNum[4][20] = 0;
                        LightingManager.opacity = 1.0f;
                        break;
                    }

                    gp.playSoundEffect(1);
                    gp.obj[20] = null;
                    gp.obj[22] = null;
                    gp.obj[21] = new objectSwitchOn();
                    gp.obj[21].worldX = 18 * gp.tileSize;
                    gp.obj[21].worldY = 21 * gp.tileSize;
                    TileManager.mapTileNum[19][37] = 0;
                    TileManager.mapTileNum[19][38] = 0;
                    break;

                case "key":
                    gp.playSoundEffect(5);
                    hasKey++;
                    gp.obj[i] = null;
                    System.out.println("Key: "+hasKey);
                    break;

                case "keydoor":
                    gp.playSoundEffect(5);
                    hasKeyDoor++;
                    gp.obj[i] = null;
                    System.out.println("KeyDoor: "+hasKeyDoor);
                    break;

                case "chest-close":
                    if(hasKey > 0){
                        hasKey--;
                        gp.obj[i] = null;
                        gp.playSoundEffect(5);
                        if(i == 4){
                            gp.obj[0] = new objectChestOpen();
                            gp.obj[0].worldX = 58 * gp.tileSize;
                            gp.obj[0].worldY = 48 * gp.tileSize;
                            appearBoss++;
                        }
                        if (i == 5) {
                            gp.obj[1] = new objectChestOpen();
                            gp.obj[1].worldX = 58 * gp.tileSize;
                            gp.obj[1].worldY = 51 * gp.tileSize;
                            appearBoss++;
                        }
                        if (i == 6) {
                            gp.obj[2] = new objectChestOpen();
                            gp.obj[2].worldX = 61* gp.tileSize;
                            gp.obj[2].worldY = 48 * gp.tileSize;
                            appearBoss++;
                        }
                        if (i == 7){
                            gp.obj[3] = new objectChestOpen();
                            gp.obj[3].worldX = 61 * gp.tileSize;
                            gp.obj[3].worldY = 51 * gp.tileSize;
                            appearBoss++;
                        }
                    }
                    break;

                case "boots":
                    //currentSpeed = speed;
                    gp.playSoundEffect(6);
                    gp.obj[i] = null;
                    boost = true;
                    startTime = System.currentTimeMillis();
                    LightingManager.opacity = LightingManager.opacity - 0.05f;
                    break;
            }

            if (appearBoss == 4){
                //Quái phòng Boss
                gp.electronic[0] = new Electronic(gp);
                gp.electronic[0].sx = 65 * gp.tileSize;
                gp.electronic[0].sy = 49 * gp.tileSize;

                gp.electronic[1] = new Electronic(gp);
                gp.electronic[1].sx = 59 * gp.tileSize;
                gp.electronic[1].sy = 49 * gp.tileSize;

                gp.electronic[2] = new Electronic(gp);
                gp.electronic[2].sx = 54 * gp.tileSize;
                gp.electronic[2].sy = 49 * gp.tileSize;

                gp.electronic[3] = new Electronic(gp);
                gp.electronic[3].sx = 59 * gp.tileSize;
                gp.electronic[3].sy = 55 * gp.tileSize;

                gp.electronic[4] = new Electronic(gp);
                gp.electronic[4].sx = 59 * gp.tileSize;
                gp.electronic[4].sy = 44 * gp.tileSize;

                gp.electronic[5] = new Electronic(gp);
                gp.electronic[5].sx = 54 * gp.tileSize;
                gp.electronic[5].sy = 44 * gp.tileSize;

                gp.electronic[6] = new Electronic(gp);
                gp.electronic[6].sx = 65 * gp.tileSize;
                gp.electronic[6].sy = 44 * gp.tileSize;

                gp.electronic[7] = new Electronic(gp);
                gp.electronic[7].sx = 59 * gp.tileSize;
                gp.electronic[7].sy = 42 * gp.tileSize;

                gp.obj[0] = null;
                gp.obj[1] = null;
                gp.obj[2] = null;
                gp.obj[3] = null;
                gp.playSoundEffect(7);

                //Draw Door Win
                gp.obj[21] = new objectDoorWin();
                gp.obj[21].worldX = 58 * gp.tileSize;
                gp.obj[21].worldY = 19 * gp.tileSize;
                OpenDoorWin = true;

                //Ra Boss
                gp.obj[26] = new objectDoorBoss();
                gp.obj[26].worldX = 58 * gp.tileSize;
                gp.obj[26].worldY = 40 * gp.tileSize;

                TileManager.mapTileNum[58][40] = 1;
                TileManager.mapTileNum[59][40] = 1;
                TileManager.mapTileNum[60][40] = 1;

                appearBoss = 0;
                aliveBoss = 8;
            }

            if(gp.electronic[0] != null) {
                if (gp.electronic[0].hp <= 0 &&
                        gp.electronic[1].hp <= 0 &&
                        gp.electronic[2].hp <= 0 &&
                        gp.electronic[3].hp <= 0 &&
                        gp.electronic[4].hp <= 0 &&
                        gp.electronic[5].hp <= 0 &&
                        gp.electronic[6].hp <= 0 &&
                        gp.electronic[7].hp <= 0) {
                    TileManager.mapTileNum[58][40] = 0;
                    TileManager.mapTileNum[59][40] = 0;
                    TileManager.mapTileNum[60][40] = 0;
                    gp.obj[26] = null;
                }
            }
        }
        return boost;
    }

    public void interRactNpc(int i) {
        if (i != 999) {
            gp.gameState = gp.npcState;
            collisionOn = true;
            collisionD = true;
            collisionL = true;
            collisionR = true;
            if(gp.ui.currentDialouge != null) gp.npc[i].speak();
        }
    }

    long startTime;

    public void update() {

        if (keyH.sprint && canSprint) {//tang toc
            if (isMoving) sM = true;
            else sM = false;
            if (mana == 0) canSprint = false;
            speed = 7;
            cspeed = 5;

        } else {
            sM = false;
//            speed = 6;//8
//            cspeed = 4;//6
//          dev mode
            speed = 10;
            cspeed = 10;
        }
        if (boost) {
            speed = 12;
            cspeed = 10;
            long nextTime = System.currentTimeMillis() - startTime;
            if (nextTime >= 3000) {
                boost = false;
            }
        }

        manaUpdate();

        //toạ độ chuột
        mouseX = mouseClick.getMouseX() - gp.screenWidth / 2;
        mouseY = mouseClick.getMouseY() - gp.getHeight() / 2;
        //isShootingFlame = true;
        if (!isAttack) {
            setKeyH();
        }
        pToECU = false;
        pToECD = false;
        pToECL = false;
        pToECR = false;
        if (!invisible) {//check va cham voi quai vat
            gp.collisionChecker.pToECo(this);
        }


        if (pToECD || pToECL || pToECR || pToECU||isHurt) {
            if (iT < 3) iT++;
        }
        if (iT == 1) {
            invisible = true;
        }

        //nhan vat khong nhan sat thuong
        if (invisible) {
            if (invisibleTime == 0) {
                currentHP--;
            }
            invisibleTime++;
            if (invisibleTime % 10 == 0) {
                if (invi) invi = false;
                else invi = true;
            }
            if (invisibleTime == 60) {
                invisible = false;
                iT = 0;
                invisibleTime = 0;
            }
        }
        if (currentHP == 0) {
            gp.uiManager.gameO = true;
            pAlive = false;
        }//nhan vat chet

        //kiem tra va cham
        collisionOn = false;
        collisionD = false;
        collisionL = false;
        collisionR = false;
        collisionU = false;
        //gp.collisionChecker.checkTile(this);


        //huong tan cong khi nhan chuot trai
        if (mouseClick.isLeftClick() && !isRolling && canAttack&&mana>=25) {
            aM = true;

            isAttack = true;
            if (abs(mouseX) < abs(mouseY) && mouseY < 0) {
                atkDirection = "attackUp";
                collisionCheck = "up";
                uD = "U";
            }
            if (abs(mouseX) < abs(mouseY) && mouseY > 0) {
                atkDirection = "attackDown";
                collisionCheck = "down";
                uD = "D";
            }
            if (abs(mouseX) > abs(mouseY) && mouseX < 0) {
                atkDirection = "attackL";
                collisionCheck = "left";
                lR = "L";
            }
            if (abs(mouseX) > abs(mouseY) && mouseX > 0) {
                atkDirection = "attackR";
                collisionCheck = "right";
                lR = "R";
            }
            System.out.println("left click");
            double dx = mouseX;
            double dy = mouseY;
            double distance = Math.sqrt(dx * dx + dy * dy);
            if (distance > 0) {
                dx /= distance;
                dy /= distance;
            }
            if(usingFlame){
                shootFlame(dx, dy);
            }
        }
        //va chạm vối đối tượng
        int objIndex = gp.collisionChecker.checkObject(this, true);
        pickUpObj(objIndex);
        int npcIndex = gp.collisionChecker.checkNpc(this);
        interRactNpc(npcIndex);

        //cap nhat tao do khi nhan vat di chuyen
        if (!isAttack && !isRolling && isMoving) {
            switch (direction) {
                case "up":
                    if (!collisionOn && !pToECU) y -= speed;
                    break;
                case "down":
                    if (!collisionOn && !pToECD) y += speed;
                    break;
                case "left":
                    if (!collisionOn && !pToECL) x -= speed;
                    break;
                case "right":
                    if (!collisionOn && !pToECR) x += speed;
                    break;
                case "upl":
                    if (!collisionL) x -= cspeed;
                    if (!collisionU) y -= cspeed;
                    break;
                case "upr":
                    if (!collisionR) x += cspeed;
                    if (!collisionU) y -= cspeed;
                    break;
                case "downl":
                    if (!collisionL) x -= cspeed;
                    if (!collisionD) y += cspeed;
                    break;
                case "downr":
                    if (!collisionR) x += cspeed;
                    if (!collisionD) y += cspeed;
                    break;
            }
        }

        //trang thai lon
        if (isRolling) {
            rollUpdate();
        }
        for (int i = 0; i < flames.size(); i++) {
            FlameAttack flame = flames.get(i);
            flame.update();
            gp.collisionChecker.checkFlameEnemyCollision(flame);
            if (!flame.isActive()) {
                flames.remove(i);
                i--;
            }
        }
        //hieu ung di chuyen
        if (isMoving) {
            isThink = false;
            thinkCounter = 0;
            spriteCounter++;
            if (keyH.sprint && canSprint) {
                if (spriteCounter % 6 == 0) {
                    spriteNum = (spriteNum + 1) % (direction.equals("up") ? up.length : direction.equals("left") ? left.length : right.length);
                }
            } else if (spriteCounter % 8 == 0) {
                spriteNum = (spriteNum + 1) % (direction.equals("up") ? up.length : direction.equals("left") ? left.length : right.length);
            }
            // Sound Move
            if ((spriteCounter % 50 == 1)) {
                gp.playSoundEffect(8);
            }
        }
        else {
            spriteCounter = 0;
        }

        //nhan vat se tien ve phia tan cong mot khoang
        if (isAttack) attackUpdate();

        //suy nghi
        if (!isAttack && !isMoving) {
            thinkUpdate();
        }

        //bong nhan vat
        switch (lR) {
            case "R":
                shadowX = screenX + 8;
                shadowY = screenY + 50;
                break;
            case "L":
                shadowX = screenX + 2;
                shadowY = screenY + 50;
                break;
        }
    }

    public void attackUpdate(){
        switch (atkDirection) {
            case "attackUp":
                if (!collisionOn) y--;
                break;
            case "attackDown":
                if (!collisionOn) y++;
                break;
            case "attackL":
                if (!collisionOn) x--;
                break;
            case "attackR":
                if (!collisionOn) x++;
                break;
        }

        //reset trang thai suy nghi
        isThink = false;
        thinkCounter = 0;
        isMoving = false;

        //am thanh tan khong khi bat dau tan cong
        if (attackCounter == 0) {
            if(usingFlame) gp.playSoundEffect(9);
            else gp.playSoundEffect(1);
        }
        attackCounter++;
        sliceCounter++;


        if (sliceCounter % 5 == 0) {
            sliceNum++;
        }
        if (attackCounter % 10 == 0) {
            attackNum = (attackNum + 1) % attackR.length;
        }
        if (attackCounter == 1) canAttack = false;
        if (attackCounter >= 20) {
            isAttack = false;
            keyH.attack = false;
            attackCounter = 0;
            sliceCounter = 0;
            sliceNum = 0;
            attackNum = 0;
        }

    }
    public void thinkUpdate(){
        thinkCounter++;
        if (thinkCounter >= 300) {
            isThink = true;
            if (thinkCounter % 5 == 0 && thinkNum < 2) {
                thinkNum++;
            }
            if (thinkCounter >= 400) {
                if (thinkCounter % 10 == 0 && thinkNum < 4) {
                    thinkNum++;
                }
            }
            if (thinkCounter >= 500) {
                if (thinkCounter % 10 == 0 && thinkNum < 6) {
                    thinkNum++;
                }
            }
            if (thinkCounter >= 600) {
                if (thinkCounter % 10 == 0 && thinkNum < 7) {
                    thinkNum++;
                }
            }
            if (thinkCounter >= 611) {
                isThink = false;
                thinkCounter = 0;
                thinkNum = 0;
            }
        }
    }

    public void rollUpdate(){
        rM = true;

        rollingCounter++;
        if (rollingCounter % 5 == 0 && rollingNum < 6) {
            rollingNum++;
        }
        if (rollingCounter == 35) {
            isRolling = false;
            rollingCounter = 0;
            rollingNum = 0;
            keyH.rolling = false;
        }
        switch (direction) {
            case "up":
                if (!collisionOn) y -= 9;
                break;
            case "down":
                if (!collisionOn) y += 9;
                break;
            case "left":
                if (!collisionOn) x -= 9;
                break;
            case "right":
                if (!collisionOn) x += 9;
                break;
            case "upr":
                if (!collisionR) x += 6;
                if (!collisionU) y -= 6;
                break;
            case "upl":
                if (!collisionL) x -= 6;
                if (!collisionU) y -= 6;
                break;
            case "downr":
                if (!collisionR) x += 6;
                if (!collisionD) y += 6;
                break;
            case "downl":
                if (!collisionL) x -= 6;
                if (!collisionD) y += 6;
                break;
        }
    }

    public void manaUpdate(){
        if (sM && mana > 0) {
            sMC++;
            if (sMC >= 3) {
                sMC = 0;
                if (mana > 0) mana--;
            }
        }
        if (rM) {
            rMC++;
            if (rMC <= 50) mana--;
            else {
                rM = false;
                rMC = 0;

            }
        }
        if (aM) {
            aMC++;
            if (aMC <= 10) mana--;
            else {
                aMC = 0;
                aM = false;
            }
        }

        if (!sM && !aM && !rM && mana < 100) {
            mC++;
            if (mC >= 3) {
                mC = 0;
                mana++;
            }
        }
    }
    public void shootFlame(double dx, double dy) {
        if (mana >= 80) {
            FlameAttack flame = new FlameAttack(gp, x, y, dx, dy);
            flames.add(flame);
            mana -= 80;
        }
    }
    public void setKeyH(){
        if (keyH.upPressed) {
            uD = "U";
            isMoving = true;
            direction = "up";
            collisionCheck = "up";
            if (keyH.rightPressed) {
                lR = "R";
                collisionCheck = direction = "upr";
                if (keyH.rolling && mana >= 50) isRolling = true;
            } else if (keyH.leftPressed) {
                lR = "L";
                collisionCheck = direction = "upl";
                if (keyH.rolling && mana >= 50) isRolling = true;
            } else if (keyH.rolling && mana >= 50) {
                isRolling = true;
                collisionCheck = "up";
            }
        } else if (keyH.downPressed) {
            uD = "D";
            isMoving = true;
            collisionCheck = direction = "down";
            if (keyH.rightPressed) {
                lR = "R";
                collisionCheck = direction = "downr";
                if (keyH.rolling && mana >= 50) isRolling = true;
            } else if (keyH.leftPressed) {
                lR = "L";
                collisionCheck = direction = "downl";
                if (keyH.rolling && mana >= 50) isRolling = true;
            } else if (keyH.rolling && mana >= 50) {
                isRolling = true;
            }
        } else if (keyH.rightPressed) {
            isMoving = true;
            uD = "D";
            lR = "R";
            collisionCheck = direction = "right";
            if (keyH.rolling && mana >= 50) {
                isRolling = true;
            }
        } else if (keyH.leftPressed) {
            isMoving = true;
            uD = "D";
            lR = "L";
            collisionCheck = direction = "left";
            if (keyH.rolling && mana >= 50) {
                isRolling = true;
            }
        } else {
            isMoving = false;
        }
    }
    public void draw(Graphics2D g2) {
        BufferedImage image = null;
        BufferedImage sliceImage;
        BufferedImage swordImage;
        if (isAttack) {
            switch (atkDirection) {
                case "attackUp":
                    if (lR.equals("R")) {
                        swordImage = swordU[sliceNum];
                        sliceImage = sliceU[sliceNum];
                        g2.drawImage(sliceImage, screenX - 7 * gp.scale, screenY - 10 * gp.scale, gp.scale * sliceImage.getWidth(), gp.scale * sliceImage.getHeight(), null);
                        g2.drawImage(swordImage, screenX + 11 * gp.scale, screenY + 9 * gp.scale, gp.scale * swordImage.getWidth(), gp.scale * swordImage.getHeight(), null);
                    } else {
                        swordImage = swordUL[sliceNum];
                        sliceImage = sliceUL[sliceNum];
                        g2.drawImage(sliceImage, screenX - 12 * gp.scale, screenY - 10 * gp.scale, gp.scale * sliceImage.getWidth(), gp.scale * sliceImage.getHeight(), null);
                        g2.drawImage(swordImage, screenX - 11 * gp.scale, screenY + 9 * gp.scale, gp.scale * swordImage.getWidth(), gp.scale * swordImage.getHeight(), null);
                    }
                    break;
                case "attackL":
                    swordImage = swordL[sliceNum];
                    sliceImage = sliceL[sliceNum];
                    g2.drawImage(sliceImage, screenX - 15 * gp.scale, screenY - 9 * gp.scale, gp.scale * sliceImage.getWidth(), gp.scale * sliceImage.getHeight(), null);
                    g2.drawImage(swordImage, screenX + 3 * gp.scale, screenY - 9 * gp.scale, gp.scale * swordImage.getWidth(), gp.scale * swordImage.getHeight(), null);
                    break;
            }

        }

        for (int i = 0; i < flames.size(); i++) {
            FlameAttack flame = flames.get(i);
            flame.draw(g2, flame.flameNum); // Sử dụng một trong bốn sprite của flame
        }
        if (invisible && invi) g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 0.3f));
        if (isMoving) {
            switch (direction) {
                case "upr":
                    image = up[spriteNum];
                    break;
                case "upl":
                    image = upl[spriteNum];
                    break;
                case "up":
                    if (lR.equals("L"))
                        image = upl[spriteNum];
                    else
                        image = up[spriteNum];
                    break;
                case "down":
                    if (lR.equals("L"))
                        image = left[spriteNum];
                    else
                        image = right[spriteNum];
                    break;
                case "left":
                    image = left[spriteNum];
                    break;
                case "right":
                    image = right[spriteNum];
                    break;
                case "downr":
                    image = right[spriteNum];
                    break;
                case "downl":
                    image = left[spriteNum];
                    break;
            }
        } else if (uD.equals("U")) {
            if (lR.equals("L")) image = standUL;
            else image = standUR;
        } else if (uD.equals("D")) {
            if (lR.equals("L")) image = thinkL[0];
            else image = thinkR[0];
        }

        if (isAttack) {
            switch (atkDirection) {
                case "attackUp":
                    if (lR.equals("L")) image = attackUL[attackNum];
                    else image = attackUR[attackNum];
                    break;
                case "attackDown":
                    if (lR.equals("L")) image = attackL[attackNum];
                    else image = attackR[attackNum];
                    break;
                case "attackL":
                    image = attackL[attackNum];
                    break;
                case "attackR":
                    image = attackR[attackNum];
                    break;
            }

        }
        if (isThink) {
            if (lR.equals("R"))
                image = thinkR[thinkNum];
            else
                image = thinkL[thinkNum];
        }

        if (isRolling) {
            if (direction.equals("up")) {
                image = rollUpR[rollingNum];
            } else if (direction.equals("down")) {
                image = rollR[rollingNum];
            } else if (direction.equals("right")) {
                image = rollR[rollingNum];
            } else if (direction.equals("left")) {
                image = rollL[rollingNum];
            } else if (direction.equals("upr")) {
                image = rollUpR[rollingNum];
            } else if (direction.equals("upl")) {
                image = rollUpL[rollingNum];
            } else if (direction.equals("downr")) {
                image = rollR[rollingNum];
            } else if (direction.equals("downl")) {
                image = rollL[rollingNum];
            }
        }
        g2.drawImage(shadow, shadowX, shadowY, gp.scale * shadow.getWidth(), gp.scale * shadow.getHeight(), null);
        g2.drawImage(image, screenX, screenY, gp.tileSize, gp.tileSize, null);
        g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 1f));
        for (int i = 0; i < maxHP / 2; i++) {
            g2.drawImage(heartE, 10 + 34 * i, 10, heartE.getWidth() * 2, heartE.getHeight() * 2, null);
        }
        for (int i = 0; i < currentHP / 2; i++) {
            g2.drawImage(heart, 10 + 34 * i, 10, heartE.getWidth() * 2, heartE.getHeight() * 2, null);
        }
        if (currentHP % 2 != 0) {
            g2.drawImage(heartH, 10 + 34 * (currentHP / 2), 10, heartE.getWidth() * 2, heartE.getHeight() * 2, null);
        }
        if (isAttack) {
            switch (atkDirection) {
                case "attackDown":
                    sliceImage = sliceD[sliceNum];
                    swordImage = swordD[sliceNum];
                    g2.drawImage(sliceImage, screenX - 9 * gp.scale, screenY + 15 * gp.scale, gp.scale * sliceImage.getWidth(), gp.scale * sliceImage.getHeight(), null);
                    g2.drawImage(swordImage, screenX - 10 * gp.scale, screenY + 9 * gp.scale, gp.scale * swordImage.getWidth(), gp.scale * swordImage.getHeight(), null);
                    break;
                case "attackR":
                    swordImage = swordR[sliceNum];
                    sliceImage = sliceR[sliceNum];
                    g2.drawImage(sliceImage, screenX + 13 * gp.scale, screenY - 8 * gp.scale, gp.scale * sliceImage.getWidth(), gp.scale * sliceImage.getHeight(), null);
                    g2.drawImage(swordImage, screenX + 7 * gp.scale, screenY + 11 * gp.scale, gp.scale * swordImage.getWidth(), gp.scale * swordImage.getHeight(), null);
                    break;
            }
        }
    }

    public void reset() {
        isMoving = false;
        isRolling = false;
        isThink = false;
        invisible = false;
        isAttack = false;
        iT = 0;
        pToECU = false;
        pToECD = false;
        pToECL = false;
        pToECR = false;
        gp.keyH.rolling = false;
        gp.keyH.attack = false;
        invisibleTime = 0;
        mana = 100;
        //isFlames = false;
    }
}
