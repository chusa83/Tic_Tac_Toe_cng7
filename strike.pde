void bigboi() {
  if (turn>4) {

    for (int i=0; i<3; i++) {
      if (board[0][i]*board[1][i]*board[2][i] == 8 || board[i][0]*board[i][1]*board[i][2] == 8) {
        over = true;
      }
      if (board[i][0]*board[i][1]*board[i][2]== 1 || board[0][i]*board[1][i]*board[2][i]== 1) {
        over = true;
      }
      if (board[0][0]*board[1][1]*board[2][2]== 1 || board[0][2]*board[1][1]*board[2][0]== 1) {
        over = true;
      }
    }
  }
  if(turn>9 && over==false){
    fill(0);
    rect(0,0,300,300);
    fill(69);
    text("You Tied", 150,150);
  }
}
