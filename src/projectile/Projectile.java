package projectile;

import main.GamePanel;

import java.awt.*;

public class Projectile {
    GamePanel gp;
    public int pjCounter = 0, pjSpeed,pjNum = 0,hitCounter,hitNum;
    public int x, y;
    public double dx, dy;
    public double xMove, yMove;
    public Rectangle area;
    //public boolean attacking = false;
    public int drawX, drawY;
    public String direction;
    public boolean hitWall;
    public boolean hitPlayer;
    public boolean exist;

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
        drawX=-gp.player.x+gp.player.screenX+x-32;
        drawY=-gp.player.y+gp.player.screenY+y-32;
        area = new Rectangle(drawX+24, drawY+20, 64, 64);
        xMove = dx * pjSpeed;
        yMove = dy * pjSpeed;
        x += (int) xMove;
        y += (int) yMove;
        xMove-=(int)xMove;
        yMove-=(int)yMove;
        direc();
        gp.collisionChecker.pjCheck(this);
        gp.collisionChecker.pjCo(this);
        if(hitPlayer||hitWall){
            exist=false;
        }
    }

    public void direc(){
        if(dx>0&&dy>0){
            direction="DR";
        } else if(dx>0&&dy<0){
            direction="UR";
        } else if(dx<0&&dy>0){
            direction="DL";
        } else if(dx<0&&dy<0){
            direction="UL";
        } else if(dx>0){
            direction="R";
        } else if(dx<0){
            direction="L";
        } else if(dy>0){
            direction="D";
        } else if(dy<0){
            direction="U";
        }
        else direction = "D";
    }

    public void hitWallU(){
        drawX=-gp.player.x+gp.player.screenX+x-32;
        drawY=-gp.player.y+gp.player.screenY+y-32;
        gp.player.isHurt=false;
        hitCounter++;
        if(hitCounter>=10){
            hitNum++;
            if(hitNum==5) hitWall=false;
        }
    }

    public void hitPlayerU(){
        drawX=gp.screenWidth/2-36;
        drawY=gp.screenHeight/2-36;
        gp.player.isHurt=false;
        hitCounter++;
        if(hitCounter>=10){
            hitNum++;
            if(hitNum==5) hitPlayer=false;
        }
    }

    public void draw() {}
}
