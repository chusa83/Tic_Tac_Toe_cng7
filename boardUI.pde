void boardUI() {
  if (over==false) {
    for (int row = 0; row < 3; row++) {
      for (int col= 0; col < 3; col++) {
        if (board[row][col]== 0) {
          fill(255);
          square(row*100, col*100, 100);
        }
        if (board[row][col]== 1) {
          fill(255, 0, 0);
          square(row*100, col*100, 100);
          fill(0);
          textAlign(CENTER, CENTER);
          textSize(90);
          text("X", (row*100)+50, (col*100)+50);
        }
        if (board[row][col]== 2) {
          fill(0, 255, 0); 
          square(row*100, col*100, 100);
          fill(0);
          textAlign(CENTER, CENTER);
          textSize(90);
          text("O", (row*100)+50, (col*100)+50);
        }
      }
    }
    if (turn>9) {
      fill(0);
      rect(0, 0, 300, 300);
      fill(69);
      textSize(30);
      text("You Tied", 150, 150);
      text("press r to restart", 150, 250);
    }
  } else {
    fill(0);
    rect(0, 0, 300, 300);
    textSize(30);
    fill(255);
    if (turn % 2 == 0) {
      text("x's win", 150, 150);
      text("o's lose", 150, 50);
      text("press r to restart", 150, 250);
    } else {
      text("x's lose", 150, 50);
      text("o's win", 150, 150);
      text("press r to restart", 150, 250);
    }
  }
} 
