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
}