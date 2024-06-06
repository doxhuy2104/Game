package main;

import entity.*;
import environment.LightingManager;
import object.superObject;
import tile.TileManager;
import ui.Menu;
import ui.*;

import javax.swing.*;
import java.awt.*;
import java.util.ArrayList;
import java.util.Comparator;


@SuppressWarnings("ALL")
public class GamePanel extends JPanel implements Runnable {
    public static int col;
    public static int row;

    public final int scale = 4;
    public final int tileSize = 16 * scale;

    public final int screenWidth = tileSize * 16;
    public final int screenHeight = tileSize * 9;

    public final int maxWorldCol = 100;
    public final int maxWorldRow = 100;


    //System
    public KeyHandler keyH = new KeyHandler(this);
    public MouseClickListener mouseClick = new MouseClickListener(this, this);
    public AssetSetter assetSetter = new AssetSetter(this);
    public Sound sound = new Sound();
    public Music music = new Music();

    Thread gameThread;

    //Sương mù
    public LightingManager lightingManager;
    //In game
    public Player player = new Player(this, keyH, mouseClick);
    TileManager tileManager = new TileManager(this);
    public Menu uiManager = new Menu(this, keyH, mouseClick);
    public UI ui = new UI(this);
    public Slime[] slime = new Slime[20];
    public CaSau[] caSau = new CaSau[20];
    public Electronic[] electronic = new Electronic[20];
    Pause pauseS = new Pause(this, mouseClick);
    GameOver gameOver = new GameOver(this, mouseClick);
    GameWin gameWin = new GameWin(this, mouseClick);
    Hud hud = new Hud(this);
    ArrayList<Entity> entities = new ArrayList<>();

    public CollisionChecker collisionChecker = new CollisionChecker(this);
    public AttackChecker attackChecker = new AttackChecker(this);

    public superObject[] obj = new superObject[50];
    public Entity[] npc = new Entity[50];
    public int FPS = 60;

    //Game State
    public int gameState;
    public final int playState = 1;
    public final int CharacterState = 2;
    public final int npcState = 3;
    //public final int gameState = 3;
    public int dialougeIndex = 0;
    public GamePanel() {
        this.setPreferredSize(new Dimension(screenWidth, screenHeight));
        this.setBackground(Color.PINK);
        this.setDoubleBuffered(true);
        this.addKeyListener(keyH);
        this.setFocusable(true);
        this.addMouseListener(mouseClick);
        player.getPlayerImage();

        // Tạo đối tượng LightingManager
        lightingManager = new LightingManager(this); // Bán kính vùng sáng là 100 pixel
    }

    public void setUpGame() {
        gameState = playState;
        assetSetter.setObject();
        assetSetter.setEnemies();
        assetSetter.setNpc();
        playMusic(0);
    }

    public void startGameThread() {
        gameThread = new Thread(this);
        gameThread.start();
    }

    @Override
    public void run() {
        long lastTime = System.nanoTime();
        while (gameThread != null) {
            long currentTime = System.nanoTime();
            long elapsedTime = currentTime - lastTime;
            if (elapsedTime >= 1000000000 / FPS) {
                repaint();
                update();
                lastTime = currentTime;
            }
        }
    }

    public void update() {

        if (uiManager.gameO) {
            FPS = 60;
            gameOver.update();
        }
        if(uiManager.gameW){
            FPS = 60;
            gameWin.update();
        }
        if (uiManager.inGame) {
            FPS = 60;
            if (uiManager.play) {
                hud.update();
                if (player.pAlive) {
                    player.update();
                }
                if(gameState == playState) {
                    for (int i = 0; i < slime.length; i++) {
                        if (slime[i] != null) {
                            slime[i].updateE();
                        }
                        if (caSau[i] != null) {
                            caSau[i].updateE();
                        }
                        if (electronic[i] != null) {
                            electronic[i].updateE();
                        }
                    }
                    for (Entity entity : npc) {
                        if (entity != null) {
                            entity.update();
                        }
                    }
                }
            }
            if (uiManager.pause) {
                pauseS.update();
            }
        } else if (!uiManager.gameO) {
            FPS = 240;
            uiManager.updateUI();
        }

    }

    public void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2 = (Graphics2D) g;

        if (uiManager.inGame) {

            tileManager.drawMap(g2);

            entities.add(player);

            for (int i = 0; i < slime.length; i++) {
                if (slime[i] != null) {
                    entities.add(slime[i]);
                }
                if (caSau[i] != null) {
                    entities.add(caSau[i]);
                }
                if (npc[i] != null) {
                    entities.add(npc[i]);
                }
                if (electronic[i] != null) {
                    entities.add(electronic[i]);
                }
            }
            entities.sort(Comparator.comparingInt(e -> e.y));

            for (object.superObject superObject : obj) {
                if (superObject != null) {
                    superObject.draw(g2, this);
                }
            }

            if (player.pAlive) for (Entity entity : entities) {
                entity.draw(g2);
            }

            entities.clear();


            hud.draw(g2);
            if (uiManager.pause) {
                pauseS.draw(g2);
            }


            ui.draw(g2);

            // Vẽ lọc tối/sáng
            lightingManager.paintComponent(g);
            if (player.pAlive) player.draw(g2);
            hud.draw(g2);

            //toa do nhan vat
            col = (player.x + player.solidArea.x) / tileSize;
            row = (player.y + player.solidArea.y) / tileSize;
            //Toa do trung tam
//            g2.drawString("Col: " + col, 10, 300);
//            g2.drawString("Row: " + row, 10, 310);
        } else if (!uiManager.gameO) {
            //main menu
            uiManager.draw(g2);
        }


        if (uiManager.gameO) {
            gameOver.draw(g2);//Game Over
        }

        if (uiManager.gameW) {
            gameWin.draw(g2);//Game Win
        }

        g2.setColor(Color.WHITE);

        g2.dispose();

    }

    //sound
    public void playMusic(int i) {
        music.setFile(i);
        music.play();
        music.loop();
    }

    public void playSoundEffect(int i) {
        sound.setFile(i);
        sound.play();
    }
}
