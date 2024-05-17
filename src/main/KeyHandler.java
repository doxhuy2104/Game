package main;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;

public class KeyHandler implements KeyListener {

    public boolean upPressed, downPressed, leftPressed, rightPressed, sprint, attack=false, rolling=false,escape;
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
            if (code == KeyEvent.VK_ESCAPE) {
                if(gp.uiManager.play&&canChange){
                    gp.uiManager.play = false;
                    gp.uiManager.pause = true;
                    canChange = false;
                }
                else if(gp.uiManager.pause&&canChange){
                    gp.uiManager.play = true;
                    gp.uiManager.pause = false;
                    canChange = false;
                }
            }
            if (code == KeyEvent.VK_P) {
                gp.gameState = gp.CharacterState;
            }

        }else if(gp.gameState==gp.CharacterState){
            Character(code);
            if (code == KeyEvent.VK_P) {
                gp.gameState = gp.playState;
            }
        }
    }
    public void Character(int code){

        if(code==KeyEvent.VK_W){
            if(gp.ui.slotRow!=0) {
                gp.ui.slotRow--;
            }
        }
        if(code==KeyEvent.VK_A){
            if(gp.ui.slotCol!=0) {
                gp.ui.slotCol--;
            }
        }
        if(code==KeyEvent.VK_S){
            if(gp.ui.slotRow!=3) {
                gp.ui.slotRow++;
            }
        }
        if(code==KeyEvent.VK_D){
            if(gp.ui.slotCol!=4) {
                gp.ui.slotCol++;
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
