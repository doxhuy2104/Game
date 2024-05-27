package object;

import javax.imageio.ImageIO;
import java.io.IOException;
import java.util.Objects;

@SuppressWarnings("ALL")
public class objectChestOpen extends superObject{

    public objectChestOpen() {
        name = "chest-open";
        try {
            imageC = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/object/chest_open.png")));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }
}