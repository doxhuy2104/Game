package entity;

import main.GamePanel;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.util.Objects;
import java.util.Random;

@SuppressWarnings("ALL")
public class NPC extends Entity{

    BufferedImage npcSheet;

    public NPC(GamePanel gp) {
        super(gp);
        this.gp=gp;
        direction = "down";
        speed = 1;
        getNPCImage();
        setDialouge();
    }
    public void  getNPCImage () {
        try {
            npcSheet = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/npc/teaGirl.png")));

            down1 = npcSheet.getSubimage(24, 0, 24, 30);
            down2 = npcSheet.getSubimage(48, 0, 24, 30);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        up1 = setup("/npc/oldman_up_1.png", gp.tileSize, gp.tileSize);
        up2 = setup("/npc/oldman_up_2.png", gp.tileSize, gp.tileSize);
//        down1 = setup("/npc/oldman_down_1.png", gp.tileSize, gp.tileSize);
//        down2 = setup("/npc/oldman_down_2.png", gp.tileSize, gp.tileSize);
        left1 = setup("/npc/oldman_left_1.png", gp.tileSize, gp.tileSize);
        left2 = setup("/npc/oldman_left_2.png", gp.tileSize, gp.tileSize);
        right1 = setup("/npc/oldman_right_1.png", gp.tileSize, gp.tileSize);
        right2 = setup("/npc/oldman_right_2.png", gp.tileSize, gp.tileSize);
    }
    public void setDialouge(){
        dialouge[0] = "So you have made it here";
        dialouge[1] = "Very well!!!";
        dialouge[2] = "But, if you want to pass, you mush defeat me in this game";
        dialouge[3] = "Try your best!";
    }
    public void setAction(){
        acTionCounter++;
        if(acTionCounter==3) {
            Random random = new Random();
            int i = random.nextInt(5)+1;
            if (i == 1) direction = "up";
            else if (i == 2) direction = "down";
            else if (i == 3) direction = "left";
            else if (i == 4) direction = "right";
        }

    }
    public void speak(){
        if(dialouge[gp.dialougeIndex] != null) {
                gp.ui.currentDialouge = dialouge[gp.dialougeIndex];
        }
    }
}
