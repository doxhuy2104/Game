package entity;

import main.GamePanel;

import java.util.Random;

public class NPC extends Entity{
    public NPC(GamePanel gp) {
        super(gp);
        this.gp=gp;
        direction = "down";
        speed = 1;
        getNPCImage();
    }
    public void  getNPCImage () {
        //up1 = setup("/npc/oldman_up_1.png", gp.tileSize, gp.tileSize);
        //up2 = setup("/npc/oldman_up_2.png", gp.tileSize, gp.tileSize);
        down1 = setup("/npc/oldman_down_1.png", gp.tileSize, gp.tileSize);
        down2 = setup("/npc/oldman_down_2.png", gp.tileSize, gp.tileSize);
        //left1 = setup("/npc/oldman_left_1.png", gp.tileSize, gp.tileSize);
        //left2 = setup("/npc/oldman_left_2.png", gp.tileSize, gp.tileSize);
        //right1 = setup("/npc/oldman_right_1.png", gp.tileSize, gp.tileSize);
        //right2 = setup("/npc/oldman_right_2.png", gp.tileSize, gp.tileSize);
    }
    /*
    public void setAction(){
        acTionCounter++;
        if(acTionCounter==12) {
            Random random = new Random();
            int i = random.nextInt(4) + 1;
            if (i == 1) direction = "up";
            else if (i == 2) direction = "down";
            else if (i == 3) direction = "left";
            else if (i == 4) direction = "right";
        }
    }*/

}
