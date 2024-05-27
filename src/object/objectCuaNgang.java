package object;

import javax.imageio.ImageIO;
import java.io.IOException;
import java.util.Objects;

@SuppressWarnings("ALL")
public class objectCuaNgang extends superObject{
    public objectCuaNgang() {
        name="DoorNgang";
        try {
            imageDN = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/object/CuaNgang.png")));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = false;
    }
}
