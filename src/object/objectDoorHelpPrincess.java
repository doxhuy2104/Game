package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectDoorHelpPrincess extends superObject {
    public objectDoorHelpPrincess() {
        name="DoorHelpPrincess";
        try {
            imageDHP = ImageIO.read(getClass().getResourceAsStream("/object/DoorForPrincess.png"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }

}
