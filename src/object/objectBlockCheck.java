package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectBlockCheck extends superObject{
    public objectBlockCheck() {
        name = "BlockCheck";
        try{
            imageBC = ImageIO.read(getClass().getResourceAsStream("/object/boots.png"));
        } catch (IOException e){
            e.printStackTrace();
        }
    }
}
