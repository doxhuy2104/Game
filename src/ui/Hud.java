package ui;

import main.GamePanel;

import javax.imageio.ImageIO;
import java.awt.*;
import java.util.Objects;

@SuppressWarnings("ALL")
public class Hud extends UI {
    GamePanel gp;
    private double fillRegion = 144;

    public Hud(GamePanel gp) {
        super(gp);
        this.gp = gp;
        getHudImage();
    }

    public void getHudImage() {
        try {
            manaFull = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/ui/full.png")));
            manaFill = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/ui/fill.png")));
            manaEmpty = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/ui/empty.png")));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update() {
        fillRegion = (double) (gp.player.mana * 144) / 100;
    }

    public void draw(Graphics2D g2) {

        if (gp.player.mana == 100)
            g2.drawImage(manaFull, 10, 44, manaFull.getWidth() * 3, manaFull.getHeight() * 3, null);
        else {
            g2.drawImage(manaEmpty, 10, 44, manaEmpty.getWidth() * 3, manaEmpty.getHeight() * 3, null);
            g2.drawImage(manaFill, 19, 44, (int) fillRegion, manaFill.getHeight() * 3, null);
        }
    }
}
