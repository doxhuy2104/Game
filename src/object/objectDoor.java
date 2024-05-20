package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectDoor extends superObject {
    public objectDoor() {
        name="Door";
        try {
            imageD = ImageIO.read(getClass().getResourceAsStream("/object/door.png"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }
}
