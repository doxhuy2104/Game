package projectile;

import main.GamePanel;

import java.awt.*;
import java.awt.image.BufferedImage;

public class Projectile {
    GamePanel gp;
    public int pjCounter = 0, pjSpeed = 4,pjNum = 0;
    public int x, y;
    public double dx, dy;
    public double xMove, yMove;
    public Rectangle area;
    public Projectile(GamePanel gp) {
        this.gp=gp;
        pjSpeed = 6;
    }

    public void update() {
        pjCounter++;
        if(pjCounter>=10){
            pjCounter=0;
            pjNum++;
            if(pjNum>=3){
                pjNum=0;
            }
        }
        xMove = dx * pjSpeed;
        yMove = dy * pjSpeed;
        x += xMove;
        y += yMove;
        xMove-=(int)xMove;
        yMove-=(int)yMove;
    }

    public void draw() {}
}