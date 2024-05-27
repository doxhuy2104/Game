package object;

import javax.imageio.ImageIO;
import java.io.IOException;
import java.util.Objects;

@SuppressWarnings("ALL")
public class objectDoorWin extends superObject {
    public objectDoorWin() {
        name="DoorWin";
        try {
            imageDW = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/object/DoorWin.png")));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }

}
