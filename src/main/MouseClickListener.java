package main;

import java.awt.*;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import javax.swing.*;

public class MouseClickListener implements MouseListener, MouseMotionListener {
    private int mouseX, mouseY;
    public boolean leftClick = false;
    private Component component;
    GamePanel gp;

    public MouseClickListener(Component component,GamePanel gp) {
        this.component = component;
        this.gp=gp;
        component.addMouseMotionListener(this);
    }


    @Override
    public void mouseClicked(MouseEvent e) {}

    @Override
    public void mousePressed(MouseEvent e) {
        if (e.getButton() == MouseEvent.BUTTON1) {
            leftClick = true;
            mouseX = e.getX();
            mouseY = e.getY();
        }
    }

    @Override
    public void mouseReleased(MouseEvent e) {
        if (e.getButton() == MouseEvent.BUTTON1) {
            leftClick = false;
            gp.player.canAttack=true;
        }
    }

    @Override
    public void mouseEntered(MouseEvent e) {
        Toolkit toolkit = Toolkit.getDefaultToolkit();
        Image image = toolkit.getImage(getClass().getResource("/UI/normal.png"));
        Point hotspot = new Point(0, 0);
        Cursor cursor = toolkit.createCustomCursor(image, hotspot, "Custom Cursor");
        if (component != null) {
            component.setCursor(cursor);
        }
    }

    @Override
    public void mouseExited(MouseEvent e) {}

    @Override
    public void mouseDragged(MouseEvent e) {
        // Cập nhật toạ độ chuột khi kéo chuột
        mouseX = e.getX();
        mouseY = e.getY();
    }

    @Override
    public void mouseMoved(MouseEvent e) {
        // Cập nhật toạ độ chuột khi di chuyển chuột
        mouseX = e.getX();
        mouseY = e.getY();
    }

    public int getMouseX() {
        return mouseX;
    }

    public int getMouseY() {
        return mouseY;
    }

    public boolean isLeftClick() {
        return leftClick;
    }
}