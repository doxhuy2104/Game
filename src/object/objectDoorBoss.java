package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectDoorBoss extends superObject{
    public objectDoorBoss() {
        name="DoorBoss";
        try {
            imageDB = ImageIO.read(getClass().getResourceAsStream("/object/CuaDoc.jpg"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }
}
