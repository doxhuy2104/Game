package object;

import javax.imageio.ImageIO;
import java.io.IOException;
import java.util.Objects;

@SuppressWarnings("ALL")
public class objectBlockCheck extends superObject{
    public objectBlockCheck() {
        name = "BlockCheck";
        try{
            imageBC = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/object/boots.png")));
        } catch (IOException e){
            e.printStackTrace();
        }
    }
}
