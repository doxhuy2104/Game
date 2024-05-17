package object;

import main.GamePanel;

import java.awt.*;
import java.awt.image.BufferedImage;

import static tile.TileManager.abs;

public class superObject {
    public BufferedImage imageK, imageD, imageC;
    public BufferedImage imageB;
    public String name;
    public boolean collision= false;
    public int worldX, worldY;
    public Rectangle solidArea = new Rectangle(0, 0, 48, 48);
    public int solidAreaDefaultX = 0;
    public int solidAreaDefaultY = 0;
    public void draw(Graphics2D g2, GamePanel gp){
        int screenX=worldX-gp.player.x +gp.player.screenX;
        int screenY=worldY-gp.player.y +gp.player.screenY;
        if(abs(screenX-gp.player.screenX)<700&&abs(screenY-gp.player.screenY)<400) {
            g2.drawImage(imageK, screenX, screenY, gp.tileSize, gp.tileSize, null);
            g2.drawImage(imageD, screenX, screenY, gp.tileSize, gp.tileSize, null);
            g2.drawImage(imageC, screenX, screenY, gp.tileSize, gp.tileSize, null);
            g2.drawImage(imageB, screenX, screenY, gp.tileSize, gp.tileSize, null);
        }
    }
}
