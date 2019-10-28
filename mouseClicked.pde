void mouseClicked(){
  int row;
  int collum;
  row = int(floor(mouseX/100));
  collum = int(floor(mouseY/100));
  if(turn%2==0){
    if(board[row][collum]==0){
    board[row][collum]=2;
    turn++;
    }
  } else{
    if(board[row][collum]==0){
    board[row][collum]=1;
    turn++;
    }
  }
  
}
