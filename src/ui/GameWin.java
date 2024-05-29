package ui;

import main.GamePanel;
import main.MouseClickListener;

import javax.imageio.ImageIO;
import java.awt.*;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

@SuppressWarnings("ALL")
public class GameWin extends UI{
    GamePanel gp;
    MouseClickListener mC;
    Font myFont, Font1, Font2,Font3;
    private float TRANSPARENCY = 0f;
    int count = 0;
    public GameWin(GamePanel gp, MouseClickListener mouseClickListener){
        super(gp);
        this.gp=gp;
        this.mC=mouseClickListener;
        loadFont();
        getVoidImage();
        screenX = gp.screenWidth / 2 - gp.tileSize / 2;
        screenY = gp.screenHeight / 2 - gp.tileSize / 2;
        mouseLocation="NONE";
    }

    public void getVoidImage(){
        try{
            voidI= ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/UI/Void2.png")));
            shadow = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/entity/playerShadow.png")));
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void loadFont() {
        try {
            InputStream is = getClass().getResourceAsStream("/UI/inexpugnableExtended.ttf");
            InputStream is1 = getClass().getResourceAsStream("/UI/1980v23P01.ttf");
            InputStream is2 = getClass().getResourceAsStream("/UI/SVN-Determination Sans.otf");
            InputStream is3 = getClass().getResourceAsStream("/UI/1980v23P01.ttf");
            assert is != null;
            myFont = Font.createFont(Font.TRUETYPE_FONT, is).deriveFont(36f);
            assert is1 != null;
            Font1 = Font.createFont(Font.TRUETYPE_FONT, is1).deriveFont(72f);
            assert is3 != null;
            Font3 = Font.createFont(Font.TRUETYPE_FONT, is3).deriveFont(108f);
            assert is2 != null;
            Font2 = Font.createFont(Font.TRUETYPE_FONT, is2).deriveFont(48f);
        } catch (IOException | FontFormatException e) {
            e.printStackTrace();
        }
    }

    public void update(){
        voidX--;
        if(voidX==-1024) voidX=0;
        if(dieNum<4) {dieCounter++;TRANSPARENCY+=0.024f;}
        if(dieCounter%10==0){
            if(dieNum<4)
                dieNum++;
        }
        if(dieNum==4) {
            gp.uiManager.play=false;
            gp.uiManager.inGame=false;
        }

        if(mC.getMouseX()>=600 && mC.getMouseX()<=1000 && mC.getMouseY()>=400 && mC.getMouseY()<=500){
            mouseLocation="DONATE FOR TEAM";if (changeSoundC < 2) changeSoundC++;
        } else {mouseLocation = "NONE";changeSoundC=0;}

        if(mC.leftClick){
            switch (mouseLocation){
                case"DONATE FOR TEAM":
                    System.exit(0);
                    break;
                case "NONE":
                    break;
            }
        } else cc=0;
        if (changeSoundC == 1) {
            gp.playSoundEffect(2);
        }
        if(cc==1){
            gp.playSoundEffect(3);
        }
        count++;
        if(count < 10) gp.playSoundEffect(13);
    }

    public void draw(Graphics2D g2){
        if(dieNum<4)g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, TRANSPARENCY));
//        g2.setColor(Color.BLACK);
//        g2.fillRect(0,0,gp.screenWidth,gp.screenHeight);
        g2.drawImage(voidI,voidX,0,2048,576,null);
        g2.setColor(Color.WHITE);
        g2.setFont(Font2);
        g2.drawString("HAVE A GOOD TIME WITH PRINCESS",(gp.screenWidth-695)/2,400);
        g2.setFont(Font3);
        g2.drawString("YOU WIN",(gp.screenWidth-273)/2,200);
        g2.setFont(Font1);

        g2.drawString("DONATE FOR TEAM",(gp.screenWidth-360)/2,500);
        g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 1f));

    }
}
