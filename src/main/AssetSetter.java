package main;

import entity.*;
import object.*;

public class AssetSetter {
    GamePanel gp;
    public AssetSetter(GamePanel gp){
        this.gp=gp;
    }
    public void setObject(){
        //Open Chest

        //Close Chest
        gp.obj[4] = new objectChestClose();
        gp.obj[4].worldX = 58 * gp.tileSize;
        gp.obj[4].worldY = 48 * gp.tileSize;

        gp.obj[5] = new objectChestClose();
        gp.obj[5].worldX = 58 * gp.tileSize;
        gp.obj[5].worldY = 51 * gp.tileSize;

        gp.obj[6] = new objectChestClose();
        gp.obj[6].worldX = 61* gp.tileSize;
        gp.obj[6].worldY = 48 * gp.tileSize;

        gp.obj[7] = new objectChestClose();
        gp.obj[7].worldX = 61 * gp.tileSize;
        gp.obj[7].worldY = 51 * gp.tileSize;

        gp.obj[8] = new objectKey();
        gp.obj[8].worldX = 54 * gp.tileSize;
        gp.obj[8].worldY = 44 * gp.tileSize;

        gp.obj[9] = new objectKey();
        gp.obj[9].worldX = 65 * gp.tileSize;
        gp.obj[9].worldY = 44 * gp.tileSize;

        gp.obj[10] = new objectKey();
        gp.obj[10].worldX = 54 * gp.tileSize;
        gp.obj[10].worldY = 55 * gp.tileSize;

        gp.obj[11] = new objectKey();
        gp.obj[11].worldX = 65 * gp.tileSize;
        gp.obj[11].worldY = 55 * gp.tileSize;

        //Cua truoc phong Quai
//        gp.obj[12] = new objectCuaDoc();
//        gp.obj[12].worldX = 30 * gp.tileSize;
//        gp.obj[12].worldY = 37 * gp.tileSize;

//        gp.obj[13] = new objectCuaDoc();
//        gp.obj[13].worldX = 39 * gp.tileSize;
//        gp.obj[13].worldY = 23 * gp.tileSize;

//        gp.obj[14] = new objectKeyDoor();
//        gp.obj[14].worldX = 38 * gp.tileSize;
//        gp.obj[14].worldY = 21 * gp.tileSize;

        //Cua truoc Me Cung
        gp.obj[15] = new objectCuaNgang();
        gp.obj[15].worldX = 3 * gp.tileSize;
        gp.obj[15].worldY = 20 * gp.tileSize;

        //Vao Boss
        gp.obj[16] = new objectDoorBoss();
        gp.obj[16].worldX = 58 * gp.tileSize;
        gp.obj[16].worldY = 29 * gp.tileSize;

        //DoorForPrincess
        gp.obj[17] = new objectDoorHelpPrincess();
        gp.obj[17].worldX = 67 * gp.tileSize;
        gp.obj[17].worldY = 23 * gp.tileSize;

        //Switch vao me cung
        gp.obj[18] = new objectSwitchOff();
        gp.obj[18].worldX = 6 * gp.tileSize;
        gp.obj[18].worldY = gp.tileSize;

        //Switch out me cung
        gp.obj[20] = new objectSwitchOff();
        gp.obj[20].worldX = 18 * gp.tileSize;
        gp.obj[20].worldY = 21 * gp.tileSize;

        //Cua sau me cung
        gp.obj[22] = new objectCuaDoc();
        gp.obj[22].worldX = 19 * gp.tileSize;
        gp.obj[22].worldY = 37 * gp.tileSize;

        //Boots
        gp.obj[23] = new objectBoots();
        gp.obj[23].worldX = gp.tileSize;
        gp.obj[23].worldY = 31 * gp.tileSize;

        gp.obj[24] = new objectBoots();
        gp.obj[24].worldX = 7 * gp.tileSize;
        gp.obj[24].worldY = 38 * gp.tileSize;

        gp.obj[25] = new objectBoots();
        gp.obj[25].worldX = 14 * gp.tileSize;
        gp.obj[25].worldY = 21 * gp.tileSize;

        //blockcheck
        gp.obj[30] =new objectBlockCheck();
        gp.obj[30].worldX = 31 * gp.tileSize;
        gp.obj[30].worldY = 37 * gp.tileSize;

        gp.obj[31] =new objectBlockCheck();
        gp.obj[31].worldX = 31 * gp.tileSize;
        gp.obj[31].worldY = 38 * gp.tileSize;

        gp.obj[32] =new objectBlockCheck();
        gp.obj[32].worldX = 38 * gp.tileSize;
        gp.obj[32].worldY = 23 * gp.tileSize;

        gp.obj[33] =new objectBlockCheck();
        gp.obj[33].worldX = 38 * gp.tileSize;
        gp.obj[33].worldY = 24 * gp.tileSize;

        gp.obj[34] =new objectBlockCheck();
        gp.obj[34].worldX = 24 * gp.tileSize;
        gp.obj[34].worldY = 21 * gp.tileSize;

        gp.obj[35] =new objectBlockCheck();
        gp.obj[35].worldX = 35 * gp.tileSize;
        gp.obj[35].worldY = 21 * gp.tileSize;
        //obj tu 36 den 38 dang su dung

        //Cua vao den tho
        //gp.obj[39] = new objectCuaNgang();
        //gp.obj[39].worldX = 34 * gp.tileSize;
        //gp.obj[39].worldY = 20 * gp.tileSize;

    }
    public void setEnemies(){
        gp.slime[0] = new Slime(gp);
        gp.slime[0].sx = 11 * gp.tileSize;
        gp.slime[0].sy = 37 * gp.tileSize;

        gp.slime[1] = new Slime(gp);
        gp.slime[1].sx = 14* gp.tileSize;
        gp.slime[1].sy = 27 * gp.tileSize;

        gp.slime[2] = new Slime(gp);
        gp.slime[2].sx = 18 * gp.tileSize;
        gp.slime[2].sy = 26 * gp.tileSize;

        gp.slime[3] = new Slime(gp);
        gp.slime[3].sx = 11 * gp.tileSize;
        gp.slime[3].sy = 21 * gp.tileSize;

        gp.caSau[0] = new CaSau(gp);
        gp.caSau[0].sx = 8 * gp.tileSize;
        gp.caSau[0].sy = 26 * gp.tileSize;

        gp.caSau[1] = new CaSau(gp);
        gp.caSau[1].sx = 20 * gp.tileSize;
        gp.caSau[1].sy = 37 * gp.tileSize;

        gp.caSau[2] = new CaSau(gp);
        gp.caSau[2].sx = 5 * gp.tileSize;
        gp.caSau[2].sy = 29 * gp.tileSize;

        gp.caSau[3] = new CaSau(gp);
        gp.caSau[3].sx = gp.tileSize;
        gp.caSau[3].sy = 35 * gp.tileSize;

        gp.caSau[12] = new CaSau(gp);
        gp.caSau[12].sx = 17 * gp.tileSize;
        gp.caSau[12].sy = 23 * gp.tileSize;

        gp.slime[12] = new Slime(gp);
        gp.slime[12].sx = 4* gp.tileSize;
        gp.slime[12].sy = 30 * gp.tileSize;

        gp.caSau[13] = new CaSau(gp);
        gp.caSau[13].sx = 10 * gp.tileSize;
        gp.caSau[13].sy = 35 * gp.tileSize;

    }
    public void setNpc(){
        gp.npc[0] = new NPC(gp);
        gp.npc[0].worldX = 61 * gp.tileSize;
        gp.npc[0].worldY = 22 * gp.tileSize;

        gp.npc[1] = new Princess(gp);
        gp.npc[1].worldX = 67 * gp.tileSize;
        gp.npc[1].worldY = 21 * gp.tileSize;
    }
}
