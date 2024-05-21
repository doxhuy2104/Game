package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectChestClose extends superObject{

    public objectChestClose() {
        name = "chest-close";
        try {
         imageC = ImageIO.read(getClass().getResourceAsStream("/object/chest_close.png"));
       } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }
}
