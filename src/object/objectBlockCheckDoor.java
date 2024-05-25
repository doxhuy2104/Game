package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectBlockCheckDoor extends superObject {
    public objectBlockCheckDoor() {
        name="BlockCheck";
        try {
            imageBC = ImageIO.read(getClass().getResourceAsStream("/object/door.png"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }

}
