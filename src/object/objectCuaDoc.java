package object;

import javax.imageio.ImageIO;
import java.io.IOException;
import java.util.Objects;

@SuppressWarnings("ALL")
public class objectCuaDoc extends superObject{
    public objectCuaDoc() {
        name="DoorDoc";
        try {
            imageDD = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/object/CuaDoc.png")));
        } catch (IOException e) {
            e.printStackTrace();
        }
        collision = false;
    }

}
