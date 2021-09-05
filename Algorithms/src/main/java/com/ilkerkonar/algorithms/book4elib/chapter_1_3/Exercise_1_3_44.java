package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import javax.swing.*;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;

public class Exercise_1_3_44 {
    public static void main(String[] args) {
        javax.swing.SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                new ApplicationGUI();
            }
        });
    }
}

class ApplicationGUI implements KeyListener {

    private TextBuffer buffer;
    private JLabel label;

    public ApplicationGUI() {
        buffer = new TextBuffer();
        label = new JLabel(buffer.getWholeText());

        //Make sure we have nice window decorations.
        JFrame.setDefaultLookAndFeelDecorated(true);

        //Create and set up the window.
        JFrame frame = new JFrame("HelloWorldSwing");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(300,300);

        //Add the ubiquitous "Hello World" label.
        frame.getContentPane().add(label);

        //Display the window.
        frame.setVisible(true);
        frame.addKeyListener(this);
    }

    private void updateTextOnTheScreen() {

    }

    @Override
    public void keyTyped(KeyEvent e) {

    }

    @Override
    public void keyPressed(KeyEvent e) {
        if (e.getKeyCode() >= KeyEvent.VK_A && e.getKeyCode() <= KeyEvent.VK_Z) {
            buffer.insert(e.getKeyChar());
        } else if (e.getKeyCode() == KeyEvent.VK_BACK_SPACE) {
            buffer.delete();
        } else if (e.getKeyCode() == KeyEvent.VK_LEFT) {
            buffer.left(1);
        } else if (e.getKeyCode() == KeyEvent.VK_RIGHT) {
            buffer.right(1);
        }

        label.setText(buffer.getWholeText());
    }

    @Override
    public void keyReleased(KeyEvent e) {

    }
}