package ui;

import main.GamePanel;
import object.objectCuaDoc;
import object.objectDoorWin;
import tile.TileManager;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;

@SuppressWarnings("ALL")
public class UI {
    public boolean gameW = false;
    GamePanel gp;
    //Font Font1;
    TicTacToe ticTacToe;
    public UI(GamePanel gp){
        this.gp = gp;
        loadFont();
    }
    public Graphics2D g2;
    public Font myFont, Font1, Font2;
    //menu
    BufferedImage castle,moon,layer1,layer2,layer3,layer4,layer5,layer6,logo,checkBox,checkedBox,cursorBox,mSetting,mFill,mSettingC,menuBox;
    public BufferedImage sideCursorL,sideCursorR;
    public int layer1X=0,layer2X=0,layer3X=0,layer4X=0, layer5X=0, layer6X =0;
    public int layer1x=0,layer2x=0,layer3x=0,layer4x=0, layer5x=0, layer6x =0,y2=0,y3=0,y4=0,y5=0,y6=0,ym=0,yc=0,x=0,xCB,yCB,xCedB=600,yCedB=270,xMB,yMB,mFillL=0,sFillL=100;
    public boolean exitUI=false,menu=true,side,inGame=false;
    public String mouseLocation;
    public int xL,yL,xR,yR,bX,bY;
    public Boolean CONTINUE=false;
    public Boolean NEWGAME=false;
    public Boolean SETTINGS=false;
    public Boolean CREDITS=false;
    public Boolean cB=false;
    public Boolean mB=false;
    public Boolean mF=false;
    public Boolean sF=false;
    public int changeSoundC=0,cc=0;
    public String difficult,currentD;
    public boolean firstTime=true;
    boolean truHp = true;

    //pause
    public boolean play=true;
    public boolean pause=false;
    public int slotCol = 0, slotRow=0;

    //GAme over
    BufferedImage voidI,shadow;
    BufferedImage[] dieI;
    public int voidX=0,screenX,screenY,dieCounter=0,dieNum=0;
    public boolean gameO = false;

    BufferedImage manaFull, manaFill, manaEmpty;
    public boolean chat = true;
    public String currentDialouge = "";

    private void loadFont() {
        try {
            InputStream is = getClass().getResourceAsStream("/ui/inexpugnableExtended.ttf");
            InputStream is1 = getClass().getResourceAsStream("/ui/1980v23P01.ttf");
            InputStream is2 = getClass().getResourceAsStream("/ui/SVN-Determination Sans.otf");
            assert is != null;
            myFont = Font.createFont(Font.TRUETYPE_FONT, is).deriveFont(24f);
            assert is1 != null;
            Font1 = Font.createFont(Font.TRUETYPE_FONT, is1).deriveFont(30f);
            assert is2 != null;
            Font2 = Font.createFont(Font.TRUETYPE_FONT, is2).deriveFont(36f);
        } catch (IOException | FontFormatException e) {
            e.printStackTrace();
        }
    }


    public void draw(Graphics2D g2){
        this.g2 = g2;
        g2.setFont(Font1);
        g2.setColor(Color.white);
        if(gp.gameState == gp.CharacterState){
            drawIventory();
        }
        if (gp.gameState == gp.npcState) {
            //Draw thoai
            if(chat){
                drawDialougeScreen();
                if((gp.dialougeIndex >= 4) && chat)  {
                    chat = false;
                    ticTacToe = new TicTacToe();
                }
            }
            if (!chat) {
                if (ticTacToe.gameOver) {
                    if (ticTacToe.Win) {
                        gp.obj[21] = new objectDoorWin();
                        gp.obj[21].worldX = 58 * gp.tileSize;
                        gp.obj[21].worldY = 19 * gp.tileSize;
                        gp.obj[16] = null;
                        TileManager.mapTileNum[58][29] = 0;
                        TileManager.mapTileNum[59][29] = 0;
                        TileManager.mapTileNum[60][29] = 0;
                        gp.player.OpenDoorWin = true;
                    }
                    if (ticTacToe.Lose) {
                        //Mo cua vao phong boss
                        gp.obj[16] = null;
                        TileManager.mapTileNum[58][29] = 0;
                        TileManager.mapTileNum[59][29] = 0;
                        TileManager.mapTileNum[60][29] = 0;

                        //Dong cua va map NPC
                        gp.obj[40] = new objectCuaDoc();
                        gp.obj[40].worldX = 50 * gp.tileSize;
                        gp.obj[40].worldY = 23 * gp.tileSize;
                        TileManager.mapTileNum[50][23] = 1;
                        TileManager.mapTileNum[50][24] = 1;

                        if (truHp) {
                            gp.player.currentHP = 2;
                            truHp = false;
                        }
                    }
                    gp.gameState = gp.playState;
                }
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
        Color c = new Color(0, 0, 0, 200);
        g2.setColor(c);
        g2.setColor(Color.BLACK);
        g2.fillRoundRect(x, y, width, height, 35, 35);
        c = new Color(255,255,255);//màu trắng
        g2.setColor(c);
        g2.setStroke(new BasicStroke(3));
        g2.drawRoundRect(x+5, y+5, width - 10, height - 10, 25, 25);
    }
    public void drawDialougeScreen(){
        int x = gp.tileSize * 3;
        int y = gp.tileSize/2;
        int width = gp.screenWidth - gp.tileSize*4;
        int height = gp.tileSize * 2;
        drawSubWindow(x, y, width, height);
        g2.setFont(Font1);
        x += gp.tileSize;
        y += gp.tileSize;
        for(String line : currentDialouge.split("\n")) {
            g2.drawString(line, x, y);
            y += 40;
        }
    }
}
