package object;

import javax.imageio.ImageIO;
import java.io.IOException;
import java.util.Objects;

@SuppressWarnings("ALL")
public class objectChestClose extends superObject{

    public objectChestClose() {
        name = "chest-close";
        try {
         imageC = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/object/chest_close.png")));
       } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }
}
