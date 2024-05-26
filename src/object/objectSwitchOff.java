package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectSwitchOff extends superObject{
    public objectSwitchOff() {
        name="SwitchOff";
        try {
            imageSOF = ImageIO.read(getClass().getResourceAsStream("/object/switch_off.png"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = false;
    }

}
