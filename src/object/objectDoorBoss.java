package object;

import javax.imageio.ImageIO;
import java.io.IOException;
import java.util.Objects;

@SuppressWarnings("ALL")
public class objectDoorBoss extends superObject{
    public objectDoorBoss() {
        name="DoorBoss";
        try {
            imageDB = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/object/CuaNgang.png")));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }
}
