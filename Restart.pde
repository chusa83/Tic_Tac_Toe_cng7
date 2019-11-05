void restart() {
  if (over==true) {
    if (keyPressed==true && key=='r') {
      restart=true;
    }
  }
  if (over==false && turn>9) {
    if (keyPressed==true && key=='r') {
      restart=true;
    }
  }
  if (restart==true) {
    turn=1;
    over=false;
    for (int row = 0; row < 3; row++) {
      for (int col= 0; col < 3; col++) {
        board[row][col]= 0;
      }
    }
    restart = false;
  }
}
