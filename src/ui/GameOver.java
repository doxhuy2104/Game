package ui;

import main.GamePanel;
import main.MouseClickListener;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;

public class GameOver extends UI{
    GamePanel gp;
    MouseClickListener mC;
    Font myFont, Font1, Font2,Font3;
    private float TRANSPARENCY = 0f;
    public GameOver(GamePanel gp, MouseClickListener mouseClickListener){
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
            voidI= ImageIO.read(getClass().getResourceAsStream("/UI/void.png"));

            BufferedImage full=ImageIO.read(getClass().getResourceAsStream("/entity/full2.png"));
            dieI= new BufferedImage[5];
            dieI[0]=full.getSubimage(0,234,16,16);
            dieI[1]=full.getSubimage(90,255,16,16);
            dieI[2]=full.getSubimage(72,255,16,16);
            dieI[3]=full.getSubimage(54,255,16,16);
            dieI[4]=full.getSubimage(36,255,16,16);
            shadow = ImageIO.read(getClass().getResourceAsStream("/entity/playerShadow.png"));
            sideCursorL = ImageIO.read(getClass().getResourceAsStream("/UI/sideCursorL.png"));
            sideCursorR = ImageIO.read(getClass().getResourceAsStream("/UI/sideCursorR.png"));
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

            myFont = Font.createFont(Font.TRUETYPE_FONT, is).deriveFont(36f);
            Font1 = Font.createFont(Font.TRUETYPE_FONT, is1).deriveFont(72f);
            Font3 = Font.createFont(Font.TRUETYPE_FONT, is3).deriveFont(108f);
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
        if(dieNum==4) {gp.uiManager.play=false;gp.uiManager.inGame=false;gp.uiManager.gameO=true;}
        if(mC.getMouseX()>=485&&mC.getMouseX()<=539&&mC.getMouseY()>=418&&mC.getMouseY()<=450){
            mouseLocation="NO";if (changeSoundC < 2) changeSoundC++;
        }
        else if(mC.getMouseX()>=440&&mC.getMouseX()<=584&&mC.getMouseY()>=468&&mC.getMouseY()<=500){
            mouseLocation="YESNT";if (changeSoundC < 2) changeSoundC++;
        } else {mouseLocation = "NONE";changeSoundC=0;}
        switch (mouseLocation){
            case "NO":
                side=true;
                xL=455;
                yL=418;
                xR=549;
                yR=418;
                break;
            case"YESNT":
                xL=410;
                yL=468;
                xR=594;
                yR=468;
                side=true;
                break;
            case "NONE":
                side=false;
                break;
        }
        if(mC.leftClick){
            switch (mouseLocation){
                case "NO":
                    dieNum=0;
                    TRANSPARENCY=0;
                    gp.uiManager.inGame=false;
                    gp.uiManager.menu=true;
                    gp.uiManager.gameO=false;
                    gp.uiManager.firstTime=true;
                    gp.player.pAlive=true;
                    gp.player.reset();
                    for(int i=0;i<gp.slime.length;i++){
                        if(gp.slime[i]!=null){
                            gp.slime[i].reset();
                        }
                    }
                    if(cc<2) cc++;
                    break;
                case"YESNT":
                    dieNum=0;
                    TRANSPARENCY=0;
                    gp.uiManager.inGame=false;
                    gp.uiManager.menu=true;
                    gp.uiManager.gameO=false;
                    gp.uiManager.firstTime=true;
                    gp.player.pAlive=true;
                    for(int i=0;i<gp.slime.length;i++){
                        if(gp.slime[i]!=null){
                            gp.slime[i].reset();
                        }
                    }
                    if(cc<2) cc++;
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
    }

    public void draw(Graphics2D g2){
        if(dieNum<4)g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, TRANSPARENCY));
//        g2.setColor(Color.BLACK);
//        g2.fillRect(0,0,gp.screenWidth,gp.screenHeight);
        g2.drawImage(voidI,voidX,0,2048,576,null);
        g2.setColor(Color.WHITE);
        g2.setFont(Font2);
        g2.drawString("BẠN MUỐN HỒI SINH KHÔNG?",(gp.screenWidth-556)/2,400);
        g2.setFont(Font3);
        g2.drawString("GAME OVER",(gp.screenWidth-352)/2,200);
        g2.setFont(Font1);
        g2.drawString("NO",(gp.screenWidth-54)/2,450);
        g2.drawString("YESN'T",(gp.screenWidth-144)/2,500);
        g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 1f));
        g2.drawImage(dieI[dieNum],screenX,screenY,dieI[dieNum].getWidth()*gp.scale,dieI[dieNum].getHeight()*gp.scale,null);
        if(side){
            g2.drawImage(sideCursorL, xL, yL, 20, 32, null);
            g2.drawImage(sideCursorR, xR, yR, 20, 32, null);
        }
    }
}
