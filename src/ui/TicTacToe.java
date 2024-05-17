package ui;

import javax.swing.*;
import java.awt.*;
import java.util.Objects;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

public class TicTacToe {
    int Rong = 300;
    int Cao = 300; //50px for the text panel on top

    Timer timer = new Timer();
    TimerTask task = new TimerTask() {
        public void run() {
            frame.dispose(); // Đóng cửa sổ JFrame
            //System.exit(0); // Thoát chương trình
        }
    };
    Random rand = new Random();
    JFrame frame = new JFrame("Tic-Tac-Toe");
    JLabel textLabel = new JLabel();
    JPanel textPanel = new JPanel();
    JPanel boardPanel = new JPanel();

    JButton[][] board = new JButton[3][3];
    String humanX = "X";
    String aiO = "O";

    boolean gameOver = false;
    int turns = 0;

    public TicTacToe() {

        frame.setUndecorated(true);
        frame.setVisible(true);
        frame.setSize(Rong, Cao);
        frame.setLocationRelativeTo(null);
        frame.setResizable(false);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        textLabel.setBackground(Color.darkGray);
        textLabel.setForeground(Color.white);
        textLabel.setFont(new Font("Arial", Font.BOLD,20));
        textLabel.setHorizontalAlignment(JLabel.CENTER);
        textLabel.setText("Tic-Tac-Toe");
        textLabel.setOpaque(true);

        textPanel.setLayout(new BorderLayout());
        textPanel.add(textLabel);
        frame.add(textPanel, BorderLayout.NORTH);

        boardPanel.setLayout(new GridLayout(3, 3));
        boardPanel.setBackground(Color.darkGray);
        frame.add(boardPanel);

        for (int r = 0; r < 3; r++) {
            for (int c = 0; c < 3; c++) {
                JButton tile = new JButton();
                board[r][c] = tile;
                boardPanel.add(tile);

                tile.setBackground(Color.darkGray);
                tile.setForeground(Color.white);
                tile.setFont(new Font("Arial", Font.BOLD, 60));
                tile.setFocusable(false);
                // tile.setText(currentPlayer);

                tile.addActionListener(e -> {
                    JButton tile1 = (JButton) e.getSource();
                    if (Objects.equals(tile1.getText(), "")) {
                        tile1.setText(humanX);
                        turns++;
                        checkWinner();
                        if (!gameOver) {
                            JButton tile2 = bestMove();
                            tile2.setText(aiO);
                            turns++;
                            checkWinner();
                        }
                        if (gameOver){
                            timer.schedule(task,1000);
                        }
                    }
                });
            }
        }
    }

    public void checkWinner() {
        //horizontal
        for (int r = 0; r < 3; r++) {
            if (Objects.equals(board[r][0].getText(), "")) continue;

            if (Objects.equals(board[r][0].getText(), board[r][1].getText()) &&
                    Objects.equals(board[r][1].getText(), board[r][2].getText())) {
                for (int i = 0; i < 3; i++) {
                    setWinner(board[r][i]);
                }
                gameOver = true;
                return;
            }
        }

        //vertical
        for (int c = 0; c < 3; c++) {
            if (Objects.equals(board[0][c].getText(), "")) continue;

            if (Objects.equals(board[0][c].getText(), board[1][c].getText()) &&
                    Objects.equals(board[1][c].getText(), board[2][c].getText())) {
                for (int i = 0; i < 3; i++) {
                    setWinner(board[i][c]);
                }
                gameOver = true;
                return;
            }
        }

        //diagonally
        if (Objects.equals(board[0][0].getText(), board[1][1].getText()) &&
                Objects.equals(board[1][1].getText(), board[2][2].getText()) &&
                !Objects.equals(board[0][0].getText(), "")) {
            for (int i = 0; i < 3; i++) {
                setWinner(board[i][i]);
            }
            gameOver = true;
            return;
        }

        //anti-diagonally
        if (Objects.equals(board[0][2].getText(), board[1][1].getText()) &&
                Objects.equals(board[1][1].getText(), board[2][0].getText()) &&
                !Objects.equals(board[0][2].getText(), "")) {
            setWinner(board[0][2]);
            setWinner(board[1][1]);
            setWinner(board[2][0]);
            gameOver = true;
            return;
        }

        if (turns == 9) {
            for (int r = 0; r < 3; r++) {
                for (int c = 0; c < 3; c++) {
                    setTie(board[r][c]);
                }
            }
            gameOver = true;
        }
    }

    public void setWinner(JButton tile) {
        tile.setForeground(Color.green);
        tile.setBackground(Color.gray);
        textLabel.setText("End game!");
    }

    public void setTie(JButton tile) {
        tile.setForeground(Color.orange);
        tile.setBackground(Color.gray);
        textLabel.setText("Hòa!");
    }

    public JButton bestMove(){
        int[] move = new int[2];
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                if (Objects.equals(board[i][j].getText(), "")) {
                    //Kiểm tra xem win được không
                    board[i][j].setText("O");
                    //horizontal
                    for (int r = 0; r < 3; r++) {
                        if (Objects.equals(board[r][0].getText(), "")) continue;

                        if (Objects.equals(board[r][0].getText(), board[r][1].getText()) &&
                                Objects.equals(board[r][1].getText(), board[r][2].getText())) {
                            board[i][j].setText("");
                            return board[i][j];
                        }
                    }

                    //vertical
                    for (int c = 0; c < 3; c++) {
                        if (Objects.equals(board[0][c].getText(), "")) continue;

                        if (Objects.equals(board[0][c].getText(), board[1][c].getText()) &&
                                Objects.equals(board[1][c].getText(), board[2][c].getText())) {
                            board[i][j].setText("");
                            return board[i][j];
                        }
                    }

                    //diagonally
                    if (Objects.equals(board[0][0].getText(), board[1][1].getText()) &&
                            Objects.equals(board[1][1].getText(), board[2][2].getText()) &&
                            !Objects.equals(board[0][0].getText(), "")) {
                        board[i][j].setText("");
                        return board[i][j];
                    }

                    //anti-diagonally
                    if (Objects.equals(board[0][2].getText(), board[1][1].getText()) &&
                            Objects.equals(board[1][1].getText(), board[2][0].getText()) &&
                            !Objects.equals(board[0][2].getText(), "")) {
                        board[i][j].setText("");
                        return board[i][j];
                    }
                    board[i][j].setText("");

                    //Kiểm tra xem có thua được không
                    board[i][j].setText("X");
                    //horizontal
                    for (int r = 0; r < 3; r++) {
                        if (Objects.equals(board[r][0].getText(), "")) continue;

                        if (Objects.equals(board[r][0].getText(), board[r][1].getText()) &&
                                Objects.equals(board[r][1].getText(), board[r][2].getText())) {
                            board[i][j].setText("");
                            return board[i][j];
                        }
                    }

                    //vertical
                    for (int c = 0; c < 3; c++) {
                        if (Objects.equals(board[0][c].getText(), "")) continue;

                        if (Objects.equals(board[0][c].getText(), board[1][c].getText()) &&
                                Objects.equals(board[1][c].getText(), board[2][c].getText())) {
                            board[i][j].setText("");
                            return board[i][j];
                        }
                    }

                    //diagonally
                    if (Objects.equals(board[0][0].getText(), board[1][1].getText()) &&
                            Objects.equals(board[1][1].getText(), board[2][2].getText()) &&
                            !Objects.equals(board[0][0].getText(), "")) {
                        board[i][j].setText("");
                        return board[i][j];
                    }

                    //anti-diagonally
                    if (Objects.equals(board[0][2].getText(), board[1][1].getText()) &&
                            Objects.equals(board[1][1].getText(), board[2][0].getText()) &&
                            !Objects.equals(board[0][2].getText(), "")) {
                        board[i][j].setText("");
                        return board[i][j];
                    }
                    board[i][j].setText("");
                }
            }
        }
        move[0] = rand.nextInt(3);
        move[1] = rand.nextInt(3);
        while (!Objects.equals(board[move[0]][move[1]].getText(), "")) {
            move[0] = rand.nextInt(3);
            move[1] = rand.nextInt(3);
        }
        return board[move[0]][move[1]];
    }
}