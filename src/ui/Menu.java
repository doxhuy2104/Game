package ui;

import main.GamePanel;
import main.KeyHandler;
import main.MouseClickListener;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.FontFormatException;
import java.io.IOException;
import java.io.InputStream;

public class Menu extends UI {
    MouseClickListener mouseClick;
    KeyHandler keyH;
    GamePanel gp;
    Font myFont, Font1, Font2;

    public Menu(GamePanel gp, KeyHandler keyH, MouseClickListener mouseC) {
        super(gp);
        this.gp = gp;
        this.keyH = keyH;
        this.mouseClick = mouseC;
        getUIImage();
        loadFont();
        mouseLocation = "NONE";
        currentD=difficult="NORMAL";
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

    public void getUIImage() {
        try {
            castle = ImageIO.read(getClass().getResourceAsStream("/UI/castle.png"));
            moon = ImageIO.read(getClass().getResourceAsStream("/UI/moon.png"));
            layer1 = ImageIO.read(getClass().getResourceAsStream("/UI/layer1.png"));
            layer2 = ImageIO.read(getClass().getResourceAsStream("/UI/layer2.png"));
            layer3 = ImageIO.read(getClass().getResourceAsStream("/UI/layer3.png"));
            layer4 = ImageIO.read(getClass().getResourceAsStream("/UI/layer4.png"));
            layer5 = ImageIO.read(getClass().getResourceAsStream("/UI/layer6.png"));
            layer6 = ImageIO.read(getClass().getResourceAsStream("/UI/layer8.png"));
            logo = ImageIO.read(getClass().getResourceAsStream("/UI/logo.png"));
            checkBox = ImageIO.read(getClass().getResourceAsStream("/UI/checkbox.png"));
            checkedBox = ImageIO.read(getClass().getResourceAsStream("/UI/checkedbox.png"));
            cursorBox = ImageIO.read(getClass().getResourceAsStream("/UI/cursorBox.png"));
            mSetting = ImageIO.read(getClass().getResourceAsStream("/UI/mSetting.png"));
            mSettingC = ImageIO.read(getClass().getResourceAsStream("/UI/mSettingC.png"));
            mFill = ImageIO.read(getClass().getResourceAsStream("/UI/mFill.png"));
            menuBox = ImageIO.read(getClass().getResourceAsStream("/UI/Box.png"));

            sideCursorL = ImageIO.read(getClass().getResourceAsStream("/UI/sideCursorL.png"));
            sideCursorR = ImageIO.read(getClass().getResourceAsStream("/UI/sideCursorR.png"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateUI() {
        if (!exitUI && menu || CREDITS || SETTINGS) {
            x = y2 = y3 = y4 = y5 = y6 = yc = ym = 0;
            layer1x -= 1;
            layer2x -= 1;
            layer3x -= 1;
            layer4x -= 1;
            layer5x -= 1;
            layer6x -= 1;
            if (layer1x % 3 == 0) layer1X -= 1;
            if (layer2x % 4 == 0) layer2X -= 1;
            if (layer3x % 3 == 0) layer3X -= 1;
            if (layer4x % 4 == 0) layer4X -= 1;
            if (layer5x % 3 == 0) layer5X -= 1;
            if (layer6x % 4 == 0) layer6X -= 1;
            if (layer1X == -1024) layer1X = 0;
            if (layer2X == -1024) layer2X = 0;
            if (layer3X == -1024) layer3X = 0;
            if (layer4X == -1024) layer4X = 0;
            if (layer5X == -1024) layer5X = 0;
            if (layer6X == -1024) layer6X = 0;
        }
        if (menu) {
            if (!firstTime && mouseClick.getMouseX() >= 648 && mouseClick.getMouseX() <= 865 && mouseClick.getMouseY() <= 250 && mouseClick.getMouseY() >= 218) {
                {
                    mouseLocation = "CONTINUE";
                    if (changeSoundC < 2) changeSoundC++;
                }
            }else if (mouseClick.getMouseX() >= 634 && mouseClick.getMouseX() <= 879 && mouseClick.getMouseY() <= 300 && mouseClick.getMouseY() >= 268) {
                mouseLocation = "NEW GAME";
                if (changeSoundC < 2) changeSoundC++;
            } else if (mouseClick.getMouseX() >= 652 && mouseClick.getMouseX() <= 861 && mouseClick.getMouseY() <= 350 && mouseClick.getMouseY() >= 318) {
                mouseLocation = "SETTINGS";
                if (changeSoundC < 2) changeSoundC++;
            } else if (mouseClick.getMouseX() >= 665 && mouseClick.getMouseX() <= 847 && mouseClick.getMouseY() <= 400 && mouseClick.getMouseY() >= 368) {
                mouseLocation = "CREDITS";
                if (changeSoundC < 2) changeSoundC++;
            } else if (mouseClick.getMouseX() >= 706 && mouseClick.getMouseX() <= 807 && mouseClick.getMouseY() <= 450 && mouseClick.getMouseY() >= 418) {
                mouseLocation = "EXIT";
                if (changeSoundC < 2) changeSoundC++;
            } else {
                mouseLocation = "NONE";
                changeSoundC = 0;
            }
        }

        switch (mouseLocation) {
            case "NONE":
                side = false;
                break;
            case "CONTINUE":
                side = true;
                xL = 628;
                yL = 218;
                xR = 865;
                yR = 218;
                break;
            case "NEW GAME":
                side = true;
                xL = 614;
                yL = 268;
                xR = 879;
                yR = 268;
                break;
            case "SETTINGS":
                side = true;
                xL = 632;
                yL = 318;
                xR = 861;
                yR = 318;
                break;
            case "CREDITS":
                side = true;
                xL = 645;
                yL = 368;
                xR = 847;
                yR = 368;
                break;
            case "EXIT":
                side = true;
                xL = 686;
                yL = 418;
                xR = 807;
                yR = 418;
                break;
        }

        if (mouseClick.leftClick) {
            switch (mouseLocation) {
                case "NONE":
                    cc=0;
                    break;
                case "CONTINUE":
                    gp.playSoundEffect(3);
                    CONTINUE = true;
                    break;
                case "NEW GAME":
                    if(cc<2)cc++;
                    NEWGAME = true;
                    break;
                case "SETTINGS":
                    gp.playSoundEffect(3);
                    SETTINGS = true;
                    break;
                case "CREDITS":
                    gp.playSoundEffect(3);
                    CREDITS = true;
                    break;
                case "EXIT":
                    gp.playSoundEffect(3);
                    System.exit(0);
                    break;
                case "BACK":
                    gp.playSoundEffect(3);
                    menu = true;
                    CREDITS = false;
                    SETTINGS = false;
                    break;
            }
        }
        if (NEWGAME) {
            firstTime=false;
            gp.player.reset();
            play=true;
            pause=false;
            exitUI = true;
            NEWGAME = false;
            for(int i=0;i<gp.slime.length;i++){
                if(gp.slime[i]!=null){
                    gp.slime[i].reset();
                }
            }
            gp.player.x=4*gp.tileSize;
            gp.player.y=4*gp.tileSize;

            //trạng thái
            switch (difficult)
            {
                case "EASY":
                    for(int i=0;i<gp.slime.length;i++){
                        if(gp.slime[i]!=null){
                            gp.slime[i].hp=2;
                        }
                    }
                    gp.player.currentHP=gp.player.maxHP=100;
                    break;
                case "NORMAL":
                    for(int i=0;i<gp.slime.length;i++){
                        if(gp.slime[i]!=null){
                            gp.slime[i].hp=5;
                        }
                    }
                    gp.player.currentHP=gp.player.maxHP=10;
                    break;
                case "HARD":
                    for(int i=0;i<gp.slime.length;i++){
                        if(gp.slime[i]!=null){
                            gp.slime[i].hp=10;
                        }
                    }
                    gp.player.currentHP=gp.player.maxHP=2;
                    break;
            }
        }
        if (CONTINUE) {
            gp.player.canAttack=false;
            inGame = true;
            menu = false;
            play=true;
            CONTINUE = false;
        }
        if (SETTINGS) {
            menu = false;
            bX = 720;
            bY = 500;
            if (mouseClick.getMouseX() >= (bX - 10) && mouseClick.getMouseX() <= 834 && mouseClick.getMouseY() <= 500 && mouseClick.getMouseY() >= 468) {
                mouseLocation = "BACK";if (changeSoundC < 2) changeSoundC++;
                side = true;
                xL = bX - 30;
                yL = 468;
                xR = 834;
                yR = 468;
            } else if (mouseClick.getMouseX() >= 600 && mouseClick.getMouseX() <= 632 && mouseClick.getMouseY() <= 252 && mouseClick.getMouseY() >= 220) {
                mouseLocation = "1";if (changeSoundC < 2) changeSoundC++;
            } else if (mouseClick.getMouseX() >= 600 && mouseClick.getMouseX() <= 632 && mouseClick.getMouseY() <= 302 && mouseClick.getMouseY() >= 270) {
                mouseLocation = "2";if (changeSoundC < 2) changeSoundC++;
            } else if (mouseClick.getMouseX() >= 600 && mouseClick.getMouseX() <= 632 && mouseClick.getMouseY() <= 352 && mouseClick.getMouseY() >= 320) {
                mouseLocation = "3";if (changeSoundC < 2) changeSoundC++;
            } else if (mouseClick.getMouseX() >= 600 && mouseClick.getMouseX() <= 632 && mouseClick.getMouseY() <= 402 && mouseClick.getMouseY() >= 370) {
                mouseLocation = "4";if (changeSoundC < 2) changeSoundC++;
            } else if (mouseClick.getMouseX() >= 717 && mouseClick.getMouseX() <= 933 && mouseClick.getMouseY() <= 103 && mouseClick.getMouseY() >= 71) {
                mouseLocation = "M";if (changeSoundC < 2) changeSoundC++;
            } else if (mouseClick.getMouseX() >= 717 && mouseClick.getMouseX() <= 933 && mouseClick.getMouseY() <= 153 && mouseClick.getMouseY() >= 121) {
                mouseLocation = "S";if (changeSoundC < 2) changeSoundC++;
            } else {
                mouseLocation = "NONE";changeSoundC=0;
            }
            switch (mouseLocation) {
                case "1":

                    cB = true;
                    mB = false;
                    xCB = 592;
                    yCB = 212;
                    break;
                case "2":

                    cB = true;
                    mB = false;
                    xCB = 592;
                    yCB = 262;
                    break;
                case "3":

                    cB = true;
                    mB = false;
                    xCB = 592;
                    yCB = 312;
                    break;
                case "4":
                    cB = true;
                    mB = false;
                    xCB = 592;
                    yCB = 362;
                    break;
                case "M":
                    mB = true;
                    cB = false;
                    xMB = 709;
                    yMB = 63;
                    break;
                case "S":
                    mB = true;
                    cB = false;
                    xMB = 709;
                    yMB = 113;
                    break;
                case "NONE":
                    cB = false;
                    mB = false;
                    break;
            }

            if (mouseClick.leftClick) {
                switch (mouseLocation) {
                    case "1":
                        if(!difficult.equals("EASY")) firstTime=true;
                        difficult="EASY";
                        gp.player.maxHP=100;
                        gp.player.currentHP=100;
                        xCedB = 600;
                        yCedB = 220;
                        if(cc<2) cc++;
                        break;
                    case "2":
                        if(!difficult.equals("NORMAL")) firstTime=true;
                        difficult="NORMAL";
                        gp.player.maxHP=10;
                        gp.player.currentHP=10;
                        xCedB = 600;
                        yCedB = 270;if(cc<2) cc++;
                        break;
                    case "3":if(!difficult.equals("HARD")) firstTime=true;
                        difficult="HARD";
                        gp.player.maxHP=2;
                        gp.player.currentHP=2;
                        xCedB = 600;
                        yCedB = 320;if(cc<2) cc++;
                        break;
                    case "4":
                        if(cc<2) cc++;
                        System.exit(0);
                    case "M":
                        if (!sF) mF = true;if(cc<2) cc++;
                        break;
                    case "S":
                        if (!mF) sF = true;if(cc<2) cc++;
                        break;
                    case "NONE":
                        break;
                }
            }else cc=0;
        }
        if (changeSoundC == 1) {
            gp.playSoundEffect(2);
        }
        if(cc==1){
            gp.playSoundEffect(3);
        }
        if (mF) {
            xMB = 709;
            yMB = 63;
            sF = false;
            if (mouseClick.getMouseX() >= 725 && mouseClick.getMouseX() <= 925) {
                mFillL = mouseClick.getMouseX() - 725;
                gp.music.volumeScale = mFillL / 20 + 1;
            } else if (mouseClick.getMouseX() < 725) {
                mFillL = 0;
                gp.music.volumeScale = 0;
            } else if (mouseClick.getMouseX() > 925) {
                mFillL = 200;
            }
            gp.music.setVolume(gp.music.volumeScale);
            if (!mouseClick.leftClick)
                mF = false;
        }
        if (sF) {
            xMB = 709;
            yMB = 113;
            mF = false;
            if (mouseClick.getMouseX() >= 725 && mouseClick.getMouseX() <= 925) {
                sFillL = mouseClick.getMouseX() - 725;gp.sound.volumeScale = sFillL / 20;
            } else if (mouseClick.getMouseX() < 725) {
                sFillL = 0; gp.sound.volumeScale=0;
            } else if (mouseClick.getMouseX() > 925) {
                sFillL = 200;
            }
            gp.sound.setVolume(gp.sound.volumeScale);
            if (!mouseClick.leftClick)
                sF = false;
        }

        if (CREDITS) {
            menu = false;
            bX = 720;
            bY = 500;
            if (mouseClick.getMouseX() >= (bX - 10) && mouseClick.getMouseX() <= 834 && mouseClick.getMouseY() <= 500 && mouseClick.getMouseY() >= 468) {
                mouseLocation = "BACK";if (changeSoundC < 2) changeSoundC++;
                side = true;
                xL = bX - 30;
                yL = 468;
                xR = 834;
                yR = 468;
            } else {
                mouseLocation = "NONE";changeSoundC=0;}
        }

        if (exitUI) {
            menu = false;
            y6 += 4;
            if (y6 >= 200) {
                ym += 4;
                yc += 4;
                if (yc >= 400) {
                    y5 += 4;
                    if (y5 >= 200) {
                        y4 += 4;
                        if (y4 >= 340) {

                            exitUI = false;
                            inGame = true;
                        }
                    }
                }
            }
        }
    }

    public void draw(Graphics2D g2) {
        g2.setColor(Color.BLACK);
        g2.fillRect(0, 0, gp.screenWidth, gp.screenHeight);

        g2.drawImage(layer1, layer1X + x, 0, 2048, 576, null);
        g2.drawImage(layer2, layer2X + x, gp.screenHeight - gp.scale * layer2.getHeight() + y2, 2048, 576, null);
        g2.drawImage(layer3, layer3X + x, gp.screenHeight - gp.scale * layer3.getHeight() + y3, 2048, 576, null);
        g2.drawImage(layer4, layer4X, gp.screenHeight - gp.scale * layer4.getHeight() + y4, 2048, 576, null);
        g2.drawImage(layer5, layer5X, gp.screenHeight - gp.scale * layer5.getHeight() + y5 + 50, 2048, 576, null);
        g2.drawImage(moon, 100, -50 - ym, 370, 370, null);

        g2.drawImage(castle, 0, 100 + yc, 540, 552, null);
        g2.drawImage(layer6, layer6X, 90 + gp.screenHeight - gp.scale * layer5.getHeight() + y6, 2048, 576, null);
        g2.setColor(Color.WHITE);

        if (menu && !exitUI) {
            g2.setFont(Font1);
//            if (side) {
//                g2.setFont(g2.getFont().deriveFont(Font.BOLD, 80f));
//            }
            g2.setColor(new Color(255, 255, 255));
            if(!firstTime)g2.drawString("CONTINUE", 658, 250);
            g2.drawString("NEW GAME", 644, 300);
            g2.drawString("SETTINGS", 662, 350);
            g2.drawString("CREDITS", 675, 400);
            g2.drawString("EXIT", 716, 450);
            if (side) {
                g2.drawImage(sideCursorL, xL, yL, 20, 32, null);
                g2.drawImage(sideCursorR, xR, yR, 20, 32, null);
            }
        }
        if (CREDITS) {
            g2.setFont(Font2);
            g2.setColor(Color.WHITE);
            g2.drawString("Đỗ Xuân Huy 20225331", 500, 50);
            g2.drawString("Nguyễn Văn Quang Huy 20225337", 500, 100);
            g2.drawString("Bùi Nguyên Huy 20225330", 500, 150);
            g2.drawString("Nguyễn Thế Anh 20225163", 500, 200);
            g2.drawString("Phan Lê Hải Đăng 20225273", 500, 250);
            g2.setFont(Font1);
            g2.drawString("BACK", bX, bY);
            if (side) {
                g2.drawImage(sideCursorL, xL, yL, 20, 32, null);
                g2.drawImage(sideCursorR, xR, yR, 20, 32, null);
            }
        }

        if (SETTINGS) {
            g2.setFont(Font2);
            g2.setColor(Color.WHITE);
            g2.drawString("MUSIC", 600, 100);
            g2.drawImage(mFill, 725, 79, mFillL, 16, null);
            g2.drawImage(mSetting, 717, 71, 216, 32, null);
            g2.drawString("SOUND", 600, 150);
            g2.drawImage(mSetting, 717, 121, 216, 32, null);
            g2.drawImage(mFill, 725, 129, sFillL, 16, null);
            g2.drawString("CHOOSE DIFFICULT:", 600, 200);
            g2.drawImage(checkBox, 600, 220, 32, 32, null);
            g2.drawString("HÁT ĐÍT", 650, 250);
            g2.drawImage(checkBox, 600, 270, 32, 32, null);
            g2.drawString("NORMAL", 650, 300);
            g2.drawImage(checkBox, 600, 320, 32, 32, null);
            g2.drawString("HARD", 650, 350);
            g2.drawImage(checkBox, 600, 370, 32, 32, null);
            g2.drawString("END GAME", 650, 400);
            if (cB) {
                g2.drawImage(cursorBox, xCB, yCB, cursorBox.getWidth() * 4, cursorBox.getHeight() * 4, null);
            }
            if (mB || mF || sF) {
                g2.drawImage(mSettingC, xMB, yMB, mSettingC.getWidth() * 4, mSettingC.getHeight() * 4, null);
            }
            g2.drawImage(checkedBox, xCedB, yCedB, 32, 32, null);

            g2.setFont(Font1);
            g2.drawString("BACK", bX, bY);
            if (side) {
                g2.drawImage(sideCursorL, xL, yL, 20, 32, null);
                g2.drawImage(sideCursorR, xR, yR, 20, 32, null);
            }
        }
    }
}