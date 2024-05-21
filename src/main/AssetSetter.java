package main;

import entity.CaSau;
import entity.Electronic;
import entity.NPC;
import entity.Slime;
import object.objectBoots;
import object.objectChestClose;
import object.objectChestOpen;
import object.objectDoor;
import object.objectKey;

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
        gp.caSau[0] = new CaSau(gp);
        gp.caSau[0].sx = 54 * gp.tileSize;
        gp.caSau[0].sy = 22 * gp.tileSize;
        gp.electronic[0] = new Electronic(gp);
        gp.electronic[0].sx = 4 * gp.tileSize;
        gp.electronic[0].sy = 4 * gp.tileSize;
    }
    public void setNpc(){
        gp.npc[0] = new NPC(gp);
        gp.npc[0].worldX = 3 * gp.tileSize;
        gp.npc[0].worldY = 4 * gp.tileSize;
    }
}
