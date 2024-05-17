package object;

import javax.imageio.ImageIO;
import java.io.IOException;

public class objectKey extends superObject{
    public objectKey(){
        name = "key";
        try{
            imageK = ImageIO.read(getClass().getResourceAsStream("/object/key.png"));
        }
        catch (IOException e){
            e.printStackTrace();
        }
    }
}
