package object;

import javax.imageio.ImageIO;
import java.io.IOException;
import java.util.Objects;

@SuppressWarnings("ALL")
public class objectKey extends superObject{
    public objectKey(){
        name = "key";
        try{
            imageK = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/object/key.png")));
        }
        catch (IOException e){
            e.printStackTrace();
        }
    }
}
