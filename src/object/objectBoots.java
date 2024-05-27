package object;

import javax.imageio.ImageIO;
import java.io.IOException;
import java.util.Objects;

@SuppressWarnings("ALL")
public class objectBoots extends superObject{
    public objectBoots() {
        name = "boots";
        try{
            imageB = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/object/boots.png")));
        } catch (IOException e){
            e.printStackTrace();
        }
        collision = true;
    }

}
