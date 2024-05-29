package object;

import javax.imageio.ImageIO;
import java.io.IOException;
import java.util.Objects;

@SuppressWarnings("ALL")
public class objectDoorHelpPrincess extends superObject {
    public objectDoorHelpPrincess() {
        name="DoorHelpPrincess";
        try {
            imageDHP = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/object/DoorForPrincess.png")));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = false;
    }

}
