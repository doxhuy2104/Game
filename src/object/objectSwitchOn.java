package object;

import javax.imageio.ImageIO;
import java.io.IOException;
import java.util.Objects;

@SuppressWarnings("ALL")
public class objectSwitchOn extends superObject{
    public objectSwitchOn() {
        name="SwitchOn";
        try {
            imageSON = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/object/switch_on.png")));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = false;
    }

}
