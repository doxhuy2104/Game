package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectCuaDoc extends superObject{
    public objectCuaDoc() {
        name="DoorDoc";
        try {
            imageDD = ImageIO.read(getClass().getResourceAsStream("/object/CuaDoc.png"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = true;
    }

}
