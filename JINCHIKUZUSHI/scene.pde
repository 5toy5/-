//スタート画面
void scene0() {
  
  drawBackground0();
  rect(0, 0, 0, 50);
  fill(255, 255, 255, 0);
  stroke(255);
  strokeWeight(2);
  rect(510, 390, 570, 105);

  fill(255, 255, 255);
  textSize(100);
  text("SPACE or ENTER", 520, 480);
  if (keyPressed) {
    if (key==' '||key==ENTER) {
//      bgmGame.play(); 
      scene=1;
    }
  }
}

//プレイ画面
void scene1() {

  drawBackground1();

  /* 動き */
  moveBarRed();  // バー
  moveBarBlue();
  moveBallRed(); // ボール
  moveBallBlue();
  giveBallVY();

  /* 衝突判定 */
  checkBallRedWallCollision(); // ボールと壁
  checkBallBlueWallCollision();
  checkBallRedBarRedCollision(); // ボールとバー
  checkBallBlueBarBlueCollision();
  checkBlockCollision(); // ボールとブロック

  /* 描画関係 */
  drawBlocks(); // ブロック
  drawBar();    // バー
  drawBall();   // ボール
  pre();
}
  
//赤勝利画面
void scene2() {
//  seWIN = minim.loadSample("./data/sound/maou_se_8bit21.mp3");
  //if (seWINWIN==false) {
  //  seWINWIN=true;
//    seWIN.trigger();
//  }
  drawBackground0();
  fill(255, 0, 0);
  textSize(300);
  text("RED WIN", 380, 560);
  if (keyPressed) {
    if (key==' '||key==ENTER) scene=0;
  }
}

//青勝利画面
void scene3() {
//  seWIN = minim.loadSample("./data/sound/maou_se_8bit21.mp3");
  //if (seWINWIN==false) {
  //  seWINWIN=true;
//    seWIN.trigger();
//  }
  drawBackground0();
  fill(0, 0, 255);
  textSize(300);
  text("BLUE WIN", 320, 560);
  if (keyPressed) { 
    if (key==' '||key==ENTER) scene=0;
  }
}
