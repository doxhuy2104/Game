package main;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;

public class KeyHandler implements KeyListener {

    public boolean upPressed;
    public boolean downPressed;
    public boolean leftPressed;
    public boolean rightPressed;
    public boolean spacePressed = false;
    public boolean sprint;
    public boolean attack=false;
    public boolean rolling=false;
    public GamePanel gp;
    public KeyHandler(GamePanel gp){
        this.gp = gp;
    }
    @Override
    public void keyTyped(KeyEvent e) {}

    boolean canChange=true;
    @Override
    public void keyPressed(KeyEvent e) {
        int code = e.getKeyCode();
        if(gp.gameState==gp.playState) {
            if (code == KeyEvent.VK_W) {
                upPressed = true;
            }
            if (code == KeyEvent.VK_S) {
                downPressed = true;
            }
            if (code == KeyEvent.VK_A) {
                leftPressed = true;
            }
            if (code == KeyEvent.VK_D) {
                rightPressed = true;
            }
            if (code == KeyEvent.VK_SHIFT) {
                sprint = true;
            }
            if (code == KeyEvent.VK_ENTER) {
                attack = true;
            }
            if (code == KeyEvent.VK_SPACE) {
                rolling = true;
            }
            if (code == KeyEvent.VK_E && gp.player.keyE) {
                gp.player.usingFlame = !gp.player.usingFlame;
            }
            if (code == KeyEvent.VK_ESCAPE) {
                if (gp.uiManager.play && canChange) {
                    gp.uiManager.play = false;
                    gp.uiManager.pause = true;
                    canChange = false;
                } else if (gp.uiManager.pause && canChange) {
                    gp.uiManager.play = true;
                    gp.uiManager.pause = false;
                    canChange = false;
                }
            }
        }else if(gp.gameState==gp.npcState){
            if (code == KeyEvent.VK_SPACE || code == KeyEvent.VK_ENTER) {
                gp.dialougeIndex++;
                spacePressed = true;
            }
        }
    }

    @Override
    public void keyReleased(KeyEvent e) {
        int code = e.getKeyCode();
        if(code==KeyEvent.VK_W){
            upPressed=false;
        }
        if(code==KeyEvent.VK_S){
            downPressed=false;
        }
        if(code==KeyEvent.VK_A){
            leftPressed=false;
        }
        if(code==KeyEvent.VK_D){
            rightPressed=false;
        }
        if(code==KeyEvent.VK_SHIFT){
            sprint=false;
        }
        if (code==KeyEvent.VK_ENTER){
            attack=false;
        }
        if(code==KeyEvent.VK_ESCAPE){
            canChange=true;
        }
        if(code==KeyEvent.VK_P){
            canChange=true;
        }
        if (code == KeyEvent.VK_SPACE) {
            rolling = false;
        }

    }
}
