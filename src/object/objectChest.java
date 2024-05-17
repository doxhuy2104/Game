package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectChest extends superObject{

    public objectChest() {
        name = "chest";
        try {
         imageC = ImageIO.read(getClass().getResourceAsStream("/object/chest.png"));
       } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }
}
