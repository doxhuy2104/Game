package ui;

import main.GamePanel;
import main.MouseClickListener;

import javax.imageio.ImageIO;
import java.awt.*;
import java.io.IOException;
import java.io.InputStream;

public class Pause extends UI{
    GamePanel gp;
    MouseClickListener mC;
    Font myFont, Font1, Font2;
    public Pause(GamePanel gp, MouseClickListener mC){
        super(gp);
        this.gp=gp;
        this.mC=mC;
        loadFont();
        mouseLocation ="NONE";
        pImage();
    }

    private void loadFont() {
        try {
            InputStream is = getClass().getResourceAsStream("/UI/inexpugnableExtended.ttf");
            InputStream is1 = getClass().getResourceAsStream("/UI/1980v23P01.ttf");
            InputStream is2 = getClass().getResourceAsStream("/UI/SVN-Determination Sans.otf");
            myFont = Font.createFont(Font.TRUETYPE_FONT, is).deriveFont(36f);
            Font1 = Font.createFont(Font.TRUETYPE_FONT, is1).deriveFont(72f);
            Font2 = Font.createFont(Font.TRUETYPE_FONT, is2).deriveFont(36f);
        } catch (IOException | FontFormatException e) {
            e.printStackTrace();
        }
    }

    public void pImage(){
        try{
            sideCursorL = ImageIO.read(getClass().getResourceAsStream("/UI/sideCursorL.png"));
            sideCursorR = ImageIO.read(getClass().getResourceAsStream("/UI/sideCursorR.png"));
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void update(){
        if(mC.getMouseX()>=413&&mC.getMouseX()<=611&&mC.getMouseY()<=400&& mC.getMouseY()>=368){
            mouseLocation ="CONTINUE";if (changeSoundC < 2) changeSoundC++;
        }
        else if(mC.getMouseX()>=391&&mC.getMouseX()<=633&&mC.getMouseY()<=450&& mC.getMouseY()>=418){
            mouseLocation ="MAIN MENU";if (changeSoundC < 2) changeSoundC++;
        }
        else if(mC.getMouseX()>=471&&mC.getMouseX()<=553&&mC.getMouseY()<=500&& mC.getMouseY()>=468){
            mouseLocation ="EXIT";if (changeSoundC < 2) changeSoundC++;
        } else {mouseLocation ="NONE";changeSoundC=0;}
        switch (mouseLocation){
            case "CONTINUE":
                side=true;
                xL=383;
                yL=368;
                xR=621;
                yR=368;
                break;
            case "MAIN MENU":
                xL=361;
                yL=418;
                xR=643;
                yR=418;
                side=true;
                break;
            case "EXIT":
                xL=441;
                yL=468;
                xR=563;
                yR=468;
                side=true;
                break;
            case "NONE":
                side=false;
                break;
        }
        if(mC.leftClick){
            switch (mouseLocation){
                case "CONTINUE":
                    gp.player.canAttack=false;
                    gp.uiManager.pause=false;if(cc<2) cc++;
                    gp.uiManager.play=true;
                    break;
                case "MAIN MENU":
                    gp.uiManager.pause=false;
                    gp.uiManager.inGame=false;
                    gp.uiManager.menu=true;if(cc<2) cc++;
                    break;
                case "EXIT":if(cc<2) cc++;
                    System.exit(0);
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
        g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 0.5f));
        g2.setColor(Color.BLACK);
        g2.fillRect(0,0,gp.screenWidth,gp.screenHeight);
        g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 1f));
        g2.setColor(Color.WHITE);
        g2.setFont(Font1);
        g2.drawString("CONTINUE",(gp.screenWidth-198)/2,400);
        g2.drawString("MAIN MENU",(gp.screenWidth-242)/2,450);
        g2.drawString("EXIT",(gp.screenWidth-82)/2,500);
        if (side) {
            g2.drawImage(sideCursorL, xL, yL, 20, 32, null);
            g2.drawImage(sideCursorR, xR, yR, 20, 32, null);
        }
    }
}
