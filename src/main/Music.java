package main;

import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import javax.sound.sampled.FloatControl;
import java.net.URL;

public class Music {
    Clip clip;
    URL soundURL[] = new URL[30];
    public float volume;
    public int volumeScale = 0;

    public Music() {
        soundURL[0] = getClass().getResource("/sound/mainMenu/mainMenu.wav");
        soundURL[4] = getClass().getResource("/sound/story.wav");
    }

    private void loadSound(URL url) {
        try {
            AudioInputStream audioIn = AudioSystem.getAudioInputStream(url);
            clip = AudioSystem.getClip();
            clip.open(audioIn);
            setVolume(volumeScale);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setFile(int i) {
        loadSound(soundURL[i]);
    }

    public void loop() {
        clip.loop(Clip.LOOP_CONTINUOUSLY);
    }

    public void play() {
        if (clip != null) {
            clip.start();
        }
    }

    public void stop() {
        clip.stop();
    }

    public void setVolume(int volumeScale) {
        switch (volumeScale) {
            case 0:
                volume = -80f;
                break;
            case 1:
                volume = -40f;
                break;
            case 2:
                volume = -30f;
                break;
            case 3:
                volume = -20f;
                break;
            case 4:
                volume = -15f;
                break;
            case 5:
                volume = -10f;
                break;
            case 6:
                volume = 0f;
                break;
            case 7:
                volume = 3f;
                break;
            case 8:
                volume = 4f;
                break;
            case 9:
                volume = 5f;
                break;
            case 10:
                volume = 6f;
                break;
        }

        if (clip != null) {
            FloatControl gainControl = (FloatControl) clip.getControl(FloatControl.Type.MASTER_GAIN);
            gainControl.setValue(volume); // Reduce volume by 10 decibels.
        }
    }
}
