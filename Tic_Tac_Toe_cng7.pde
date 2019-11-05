/*
Conventions:
 0 = empty 1 = x
 * 2 = o
 */
boolean over;
int board[][] = new int[3][3];
int turn = 1;
boolean restart = false;

void setup() {
  size(300, 300);
  over=false;
  for (int row = 0; row < 3; row++) {
    for (int col= 0; col < 3; col++) {
      board[row][col]= 0; // fill with empty spaces
    }
  }
  /*test
   board[0][1]= 1;
   board[2][2]= 2;*/
}

void draw() {
  boardUI();
  restart();
}
