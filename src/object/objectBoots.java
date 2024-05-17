package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectBoots extends superObject{
    public objectBoots() {
        name = "boots";
        try{
            imageB = ImageIO.read(getClass().getResourceAsStream("/object/boots.png"));
        } catch (IOException e){
            e.printStackTrace();
        }
        collision = true;
    }

}
