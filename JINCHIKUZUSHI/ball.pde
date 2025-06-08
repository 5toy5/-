/* ball関係のタブ */
/* ballに関する変数や関数をここに書く */
final int MAX_BALL=6;

float ballRedX = 353.0f;
float ballRedY = 450.0f;
float ballRedVX;
float ballRedVY=1;
float ballRedRadius = 15.0f;

float ballBlueX = 1247.0f;
float ballBlueY = 450.0f;
float ballBlueVX;
float ballBlueVY=1;
float ballBlueRadius = 15.0f;

int loopRed;
int loopBlue;
float penaltyRedNumber;
float penaltyBlueNumber;

/* ボールの動き */
void moveBallRed() {
  ballRedX += ballRedVX;
  ballRedY += ballRedVY;
}

void moveBallBlue() {
  ballBlueX += ballBlueVX;
  ballBlueY += ballBlueVY;
}

/* ボールの描画 */
void drawBall() {
  fill(255, 0, 0);
  ellipse(ballRedX, ballRedY, ballRedRadius * 2, ballRedRadius * 2);
  fill(0, 0, 255);
  ellipse(ballBlueX, ballBlueY, ballBlueRadius * 2, ballBlueRadius * 2);
}

//1フレーム前のボール座標記録
float preballRedX;
float preballRedY;
float preballBlueX;
float preballBlueY;

void pre(){
  preballRedX=ballRedX;
  preballRedY=ballRedY;
  preballBlueX=ballBlueX;
  preballBlueY=ballBlueY;
}
