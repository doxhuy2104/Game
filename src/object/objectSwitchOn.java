package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectSwitchOn extends superObject{
    public objectSwitchOn() {
        name="SwitchOn";
        try {
            imageSON = ImageIO.read(getClass().getResourceAsStream("/object/switch_on.png"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = false;
    }

}
