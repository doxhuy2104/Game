package ui;

import main.GamePanel;

import java.awt.*;
import java.awt.image.BufferedImage;

public class UI {
    GamePanel gp;
    Font Font1;
    TicTacToe ticTacToe;
    public UI(GamePanel gp){
        this.gp = gp;
    }
    public Graphics2D g2;
    //menu
    BufferedImage castle,moon,layer1,layer2,layer3,layer4,layer5,layer6,logo,checkBox,checkedBox,cursorBox,mSetting,mFill,mSettingC,menuBox;
    public BufferedImage sideCursorL,sideCursorR;
    public int layer1X=0,layer2X=0,layer3X=0,layer4X=0, layer5X=0, layer6X =0;
    public int layer1x=0,layer2x=0,layer3x=0,layer4x=0, layer5x=0, layer6x =0,y2=0,y3=0,y4=0,y5=0,y6=0,ym=0,yc=0,x=0,xCB,yCB,xCedB=600,yCedB=270,xMB,yMB,mFillL=0,sFillL=100;
    public boolean exitUI=false,menu=true,side,inGame=false;
    public String mouseLocation;
    public int xL,yL,xR,yR,bX,bY;
    public Boolean CONTINUE=false,NEWGAME=false,SETTINGS=false,CREDITS=false,cB=false,mB=false,mF=false,sF=false,sB=false,cS=false;
    public int changeSoundC=0,cc=0;
    public String difficult,currentD;
    public boolean firstTime=true;

    //pause
    public boolean play=true,pause=false,cP=true;
    public int pC=0,pc=0;
    public int slotCol = 0, slotRow=0;

    //GAme over
    BufferedImage voidI,shadow;
    BufferedImage[] dieI;
    public int voidX=0,screenX,screenY,dieCounter=0,dieNum=0;
    public boolean gameO=false;

    BufferedImage manaFull, manaFill, manaEmpty;
    boolean gameT=true;


    public void draw(Graphics2D g2){
        this.g2 = g2;
        g2.setFont(Font1);
        g2.setColor(Color.white);
        if(gp.gameState == gp.playState){

        }
        if(gp.gameState == gp.CharacterState){
            drawIventory();
        }
        if (gp.gameState == gp.npcState) {
            //drawIventory();
            if (gameT) {
                ticTacToe = new TicTacToe();
                gameT = false;
            }
            if (ticTacToe.gameOver) {
                gameT = true;
                gp.npc[0] = null;
                gp.gameState = gp.playState;
            }

        }
    }
    public void drawIventory(){
        //frame
        int x = gp.tileSize * 9;
        int y = gp.tileSize/2;
        int width = gp.tileSize * 6;
        int height = gp.tileSize * 5;
        drawSubWindow(x, y, width, height);
        //slot
        final int slotStartX = x + 33;
        final int slotStartY = y + 30;
        int slotx = slotStartX;
        int slotY = slotStartY;
        //cursor
            int cursorX = slotStartX + (gp.tileSize * slotCol);
            int cursorY = slotStartY + (gp.tileSize * slotRow);
            int cursorWitdth = gp.tileSize;
            int cursorHeight = gp.tileSize;
            //draw cursor
            g2.setColor(Color.WHITE);
            g2.setStroke(new BasicStroke(3));
            g2.drawRoundRect(cursorX, cursorY, cursorWitdth, cursorHeight, 10, 10);
    }
    public void drawSubWindow(int x, int y, int width, int height){
        g2.setColor(Color.BLACK);
        g2.fillRoundRect(x, y, width, height, 35, 35);
        Color c = new Color(255,255,255);//màu trắng
        g2.setColor(c);
        g2.setStroke(new BasicStroke(5));
        g2.drawRoundRect(x+5, y+5, width - 10, height - 10, 25, 25);
    }
}
