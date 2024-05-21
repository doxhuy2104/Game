package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectChestOpen extends superObject{

    public objectChestOpen() {
        name = "chest-open";
        try {
            imageC = ImageIO.read(getClass().getResourceAsStream("/object/chest_open.png"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }
}