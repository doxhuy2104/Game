package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectCuaNgang extends superObject{
    public objectCuaNgang() {
        name="DoorNgang";
        try {
            imageDN = ImageIO.read(getClass().getResourceAsStream("/object/CuaNgang.png"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }
}
