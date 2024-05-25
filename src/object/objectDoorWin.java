package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectDoorWin extends superObject {
    public objectDoorWin() {
        name="DoorWin";
        try {
            imageDW = ImageIO.read(getClass().getResourceAsStream("/object/DoorWin.png"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }

}
