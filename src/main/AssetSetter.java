package main;

import entity.CaSau;
import entity.Electronic;
import entity.NPC;
import entity.Slime;
import object.*;

public class AssetSetter {
    GamePanel gp;
    public AssetSetter(GamePanel gp){
        this.gp=gp;
    }
    public void setObject(){

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

        //cua doc cua ngang, chia khoa cua
        gp.obj[12] = new objectBlockCheckDoor();
        gp.obj[12].worldX = 29 * gp.tileSize;
        gp.obj[12].worldY = 37 * gp.tileSize +gp.tileSize;

        gp.obj[13] = new objectCuaDoc();
        gp.obj[13].worldX = 29 * gp.tileSize;
        gp.obj[13].worldY = 37 * gp.tileSize;

        gp.obj[14] = new objectBlockCheckDoor();
        gp.obj[14].worldX = 39 * gp.tileSize;
        gp.obj[14].worldY = 23 * gp.tileSize +gp.tileSize;

        gp.obj[15] = new objectCuaDoc();
        gp.obj[15].worldX = 39 * gp.tileSize;
        gp.obj[15].worldY = 23 * gp.tileSize;

        gp.obj[16] = new objectKeyDoor();
        gp.obj[16].worldX = 38 * gp.tileSize;
        gp.obj[16].worldY = 21 * gp.tileSize;



        gp.obj[17] = new objectBlockCheckDoor();
        gp.obj[17].worldX = 4 * gp.tileSize;
        gp.obj[17].worldY = 9 * gp.tileSize;

        gp.obj[18] = new objectCuaNgang();
        gp.obj[18].worldX = 3 * gp.tileSize;
        gp.obj[18].worldY = 9 * gp.tileSize;

        gp.obj[19] = new objectDoorBoss();
        gp.obj[19].worldX = 58 * gp.tileSize;
        gp.obj[19].worldY = 29 * gp.tileSize;

        gp.obj[20] = new objectBlockCheckDoor();
        gp.obj[20].worldX = 59 * gp.tileSize;
        gp.obj[20].worldY = 29 * gp.tileSize;

        gp.obj[21] = new objectBlockCheckDoor();
        gp.obj[21].worldX = 60 * gp.tileSize;
        gp.obj[21].worldY = 29 * gp.tileSize;



        //DoorForPrincess
        gp.obj[30] = new objectDoorHelpPrincess();
        gp.obj[30].worldX = 67 * gp.tileSize;
        gp.obj[30].worldY = 23 * gp.tileSize;



//        gp.obj[4] = new objectBoots();
//        gp.obj[4].worldX = 3 * gp.tileSize;
//        gp.obj[4].worldY = 20 * gp.tileSize;

//        gp.obj[] = new objectChestClose();
//        gp.obj[].worldX = 59 * gp.tileSize;
//        gp.obj[].worldY = 49 * gp.tileSize;

//        gp.obj[5] = new objectDoor();
//        gp.obj[5].worldX = 34 * gp.tileSize;
//        gp.obj[5].worldY = 20 * gp.tileSize;

    }
    public void setEnemies(){
        gp.slime[0] = new Slime(gp);
        gp.slime[0].sx = 65 * gp.tileSize;
        gp.slime[0].sy = 20 * gp.tileSize;

        gp.slime[1] = new Slime(gp);
        gp.slime[1].sx = 14* gp.tileSize;
        gp.slime[1].sy = 28 * gp.tileSize;

        gp.slime[2] = new Slime(gp);
        gp.slime[2].sx = 32* gp.tileSize;
        gp.slime[2].sy = 06 * gp.tileSize;

        gp.slime[3] = new Slime(gp);
        gp.slime[3].sx = 57* gp.tileSize;
        gp.slime[3].sy = 46 * gp.tileSize;

        gp.caSau[0] = new CaSau(gp);
        gp.caSau[0].sx = 54 * gp.tileSize;
        gp.caSau[0].sy = 22 * gp.tileSize;

        gp.caSau[1] = new CaSau(gp);
        gp.caSau[1].sx = 20 * gp.tileSize;
        gp.caSau[1].sy = 37 * gp.tileSize;

        gp.caSau[2] = new CaSau(gp);
        gp.caSau[2].sx = 62 * gp.tileSize;
        gp.caSau[2].sy = 46 * gp.tileSize;

        gp.caSau[3] = new CaSau(gp);
        gp.caSau[3].sx = 2 * gp.tileSize;
        gp.caSau[3].sy = 34 * gp.tileSize;

//        gp.electronic[0] = new Electronic(gp);
//        gp.electronic[0].sx = 4 * gp.tileSize;
//        gp.electronic[0].sy = 4 * gp.tileSize;
    }
    public void setNpc(){
        gp.npc[0] = new NPC(gp);
        gp.npc[0].worldX = 61 * gp.tileSize;
        gp.npc[0].worldY = 22 * gp.tileSize;
    }
}
