package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectKeyDoor extends superObject{
    public objectKeyDoor(){
        name = "keydoor";
        try{
            imageK = ImageIO.read(getClass().getResourceAsStream("/object/keydoor.png"));
        }
        catch (IOException e){
            e.printStackTrace();
        }
    }

}
