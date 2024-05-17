package tile;

import main.GamePanel;


import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class TileManager extends Tile{
    GamePanel gp;

    public Tile[] tile;

    public int mapTileNum[][];
    public int currentSprite=0;

    public static int abs(int x) {
        return x >= 0 ? x : -x;
    }

    public TileManager(GamePanel gp){
        this.gp=gp;
        mapTileNum=new int[gp.maxWorldCol][gp.maxWorldRow];

        tile= new Tile[100];

        getTileImage();
        loadMap("/maps/map.txt");
    }

    public void getTileImage(){
        try{
            BufferedImage spriteSheet = ImageIO.read(getClass().getResourceAsStream("/tiles/overworld.png"));
            BufferedImage water=ImageIO.read(getClass().getResourceAsStream("/tiles/water2.png"));

            BufferedImage terrainSheet=ImageIO.read(getClass().getResourceAsStream("/tiles/terrain.png"));
            glass=terrainSheet.getSubimage(127,15,98,34);

            map=ImageIO.read(getClass().getResourceAsStream("/maps/mapnew.png"));

            for(int i =0;i<100;i++){
                tile[i]= new Tile();
            }
            //collision
            for(int i=1;i<11;i++)
                tile[i].collision=true;
            for(int i=12;i<26;i++){
                tile[i].collision=true;
            }


            tree=new BufferedImage[10];
            tree[0]=ImageIO.read(getClass().getResourceAsStream("/tiles/environment/trees/tree1.png"));
            tree[1]=ImageIO.read(getClass().getResourceAsStream("/tiles/environment/trees/big1.png"));
            BufferedImage campFireSheet=ImageIO.read(getClass().getResourceAsStream("/tiles/environment/trees/campfire.png"));
            campFire=new BufferedImage[5];
            for(int i =0;i<5;i++){
                campFire[i]=campFireSheet.getSubimage((2+(32+18)*i),9,32,32);
            }


        } catch (IOException e){
            e.printStackTrace();
        }
    }

    public void loadMap(String map){
        try{
            InputStream is=getClass().getResourceAsStream(map);
            BufferedReader br=new BufferedReader(new InputStreamReader(is));
            int col=0;
            int row=0;
            while (col<gp.maxWorldCol&&row< gp.maxWorldRow){
                String line=br.readLine();
                while (col< gp.maxWorldCol){
                    String numbers[]=line.split(",");
                    int num=Integer.parseInt(numbers[col]);
                    mapTileNum[col][row]=num;
                    col++;
                }
                if (col==gp.maxWorldCol){
                    col=0;
                    row++;
                }
            }
            br.close();
        } catch (Exception e){
        }
    }

    public void updateCampFire() {
        campFireCounter++;
        if(campFireCounter%10==0)
            currentSprite = (currentSprite + 1) % campFire.length;
    }


    public void draw(Graphics2D g2){


        int col=0,row=0;


        while (col<gp.maxWorldCol&&row< gp.maxWorldRow){
            int tileNum=mapTileNum[col][row];

            int worldX=col*gp.tileSize;
            int worldY=row*gp.tileSize;
            int screenX=worldX-gp.player.x +gp.player.screenX;
            int screenY=worldY-gp.player.y +gp.player.screenY;
           if(abs(screenX-gp.player.screenX)<700&&abs(screenY-gp.player.screenY)<400)
               g2.drawImage(tile[tileNum].image,screenX,screenY,gp.tileSize,gp.tileSize,null);
        col++;
        if(col==gp.maxWorldCol){
            col=0;
            row++;
        }
        }

    }

    public void drawMap(Graphics2D g2){
        g2.drawImage(map,-gp.player.x+gp.player.screenX,-gp.player.y+gp.player.screenY,map.getWidth()*gp.scale,map.getHeight()*gp.scale,null);
    }

    public void drawGlass(Graphics2D g2){
        int screenX =-gp.player.x +gp.player.screenX;
        int screenY =-gp.player.y +gp.player.screenY;
        for(int i=0;i<20;i++){
            for(int j=0;j<20;j++){
                if(abs((screenX +gp.scale*glass.getWidth()*i)-gp.player.screenX)<900&&abs((screenY +gp.scale*glass.getHeight()*j)-gp.player.screenY)<400) g2.drawImage(glass, screenX +gp.scale*glass.getWidth()*i, screenY +gp.scale*glass.getHeight()*j,gp.scale* glass.getWidth(),gp.scale* glass.getHeight(),null);
            }
        }
    }
    public void drawWater(Graphics2D g2){
        int entityX=-gp.player.x +gp.player.screenX;
        int entityY=-gp.player.y +gp.player.screenY;
        g2.drawImage(tile[11].image,10*gp.tileSize+entityX,6*gp.tileSize+entityY+32*gp.scale,gp.scale*tile[11].image.getWidth(),gp.scale*tile[11].image.getHeight(),null);
        g2.drawImage(tile[11].image,10*gp.tileSize+entityX+240*gp.scale,6*gp.tileSize+entityY,gp.scale*tile[11].image.getWidth(),gp.scale*tile[11].image.getHeight(),null);
        g2.drawImage(tile[25].image,gp.tileSize*27+entityX,gp.tileSize*12+entityY,64,64,null);
        g2.drawImage(tile[25].image,gp.tileSize*27+entityX,gp.tileSize*13+entityY,64,64,null);
        g2.drawImage(tile[25].image,gp.tileSize*32+entityX,gp.tileSize*13+entityY,64,64,null);
        g2.drawImage(tile[25].image,gp.tileSize*32+entityX,gp.tileSize*14+entityY,64,64,null);
        g2.drawImage(tile[25].image,gp.tileSize*42+entityX,gp.tileSize*16+entityY,64,64,null);
        g2.drawImage(tile[25].image,gp.tileSize*42+entityX,gp.tileSize*17+entityY,64,64,null);
        g2.drawImage(tile[25].image,gp.tileSize*47+entityX,gp.tileSize*17+entityY,64,64,null);
        g2.drawImage(tile[25].image,gp.tileSize*47+entityX,gp.tileSize*18+entityY,64,64,null);
    }
    public void drawTree(Graphics2D g2){
        int entityX=-gp.player.x +gp.player.screenX;
        int entityY=-gp.player.y +gp.player.screenY;
        g2.drawImage(tree[0],10*gp.tileSize+entityX+2*gp.scale,6*gp.tileSize+entityY+137*gp.scale,gp.scale*tree[0].getWidth(),gp.scale*tree[0].getHeight(),null);
        g2.drawImage(tree[1],10*gp.tileSize+entityX+242* gp.scale,6*gp.tileSize+entityY-75* gp.scale,gp.scale*tree[1].getWidth(),gp.scale*tree[1].getHeight(),null);
    }
    public void drawCampFire(Graphics2D g2){
        int entityX=-gp.player.x +gp.player.screenX;
        int entityY=-gp.player.y +gp.player.screenY;
        g2.drawImage(campFire[currentSprite],10*gp.tileSize+entityX+12* gp.scale,6*gp.tileSize+entityY+60* gp.scale,gp.scale*32,gp.scale*32,null);
    }

}