/* 壁とボールの衝突判定 */
void checkBallRedWallCollision() {

  if ( ballRedX - ballRedRadius <= 0 ) { // 左右
    ballRedVX = -ballRedVX;
    while (true) {
      penaltyRedNumber=random(0, 48);
      if (hitFlag[int(penaltyRedNumber)]== false) {
        hitFlag[int(penaltyRedNumber)]=true;
//        seBallPenalty.trigger();
        break;
      }
    }
  }

  if (width < ballRedX + ballRedRadius) {
//    minim.stop();
    scene = 2;
  }
  if ( ballRedY - ballRedRadius < 0 || ballRedY + ballRedRadius > height) { // 上下の壁
//    seBallWall.trigger();
    ballRedVY = -ballRedVY;
  }
}


void checkBallBlueWallCollision() {

  if ( ballBlueX + ballBlueRadius > width ) { // 左右
    ballBlueVX = -ballBlueVX;
    while (true) {
      penaltyBlueNumber=random(0, 48);
      if (hitFlag[int(penaltyBlueNumber)]== true) {
        hitFlag[int(penaltyBlueNumber)]=false;
//        seBallPenalty.trigger();
        break;
      }
    }
  }

  if (0 > ballBlueX - ballBlueRadius) {
//    seWIN.trigger();
//    minim.stop( );
    scene = 3;
  }
  if ( ballBlueY - ballBlueRadius < 0 ||  ballBlueY + ballBlueRadius > height) { // 上下の壁
//      seBallWall.trigger();
      ballBlueVY = -ballBlueVY;
  }
}

boolean barRedHitFlag;
boolean barBlueHitFlag;
/* ボールとバーの衝突判定 */
void checkBallRedBarRedCollision() {
  if ( (barRedX <= ballRedX && ballRedX <= barRedX + barRedWidth && barRedY <= ballRedY - ballRedRadius && ballRedY - ballRedRadius <= barRedY + barRedHeight) || 
        (barRedX <= ballRedX + ballRedRadius && ballRedX + ballRedRadius <= barRedX + barRedWidth && barRedY <= ballRedY && ballRedY <= barRedY + barRedHeight)||
        (barRedX <= ballRedX && ballRedX <= barRedX + barRedWidth && barRedY <= ballRedY + ballRedRadius && ballRedY + ballRedRadius <= barRedY + barRedHeight)||
        (barRedX <= ballRedX - ballRedRadius && ballRedX - ballRedRadius <= barRedX + barRedWidth && barRedY <= ballRedY && ballRedY <= barRedY + barRedHeight)) {
    if (barRedHitFlag == false) {
//          seBallBar.trigger();
          barRedHitFlag = true;
          ballRedVY = 0.09 * giveBallRedVY;
      if(ballRedX < barRedX + barRedWidth/2){
          ballRedVX = -6.0f;
        }else{
        ballRedVX = 6.0f;
      }
    }else{barRedHitFlag = false;
   }
  }
}

void checkBallBlueBarBlueCollision() {
  if ( (barBlueX <= ballBlueX && ballBlueX <= barBlueX + barBlueWidth && barBlueY <= ballBlueY - ballBlueRadius && ballBlueY - ballBlueRadius <= barBlueY + barBlueHeight) || 
        (barBlueX <= ballBlueX + ballBlueRadius && ballBlueX + ballBlueRadius <= barBlueX + barBlueWidth && barBlueY <= ballBlueY && ballBlueY <= barBlueY + barBlueHeight)||
        (barBlueX <= ballBlueX && ballBlueX <= barBlueX + barBlueWidth && barBlueY <= ballBlueY + ballBlueRadius && ballBlueY + ballBlueRadius <= barBlueY + barBlueHeight)||
        (barBlueX <= ballBlueX - ballBlueRadius && ballBlueX - ballBlueRadius <= barBlueX + barBlueWidth && barBlueY <= ballBlueY && ballBlueY <= barBlueY + barBlueHeight)) {
    if (barBlueHitFlag == false) {
//          seBallBar.trigger();
          barBlueHitFlag = true;
          ballBlueVY = 0.09 * giveBallBlueVY;
      if(ballBlueX < barBlueX + barBlueWidth/2){
          ballBlueVX = -6.0f;
        }else{
        ballBlueVX = 6.0f;
      }
    }else{barBlueHitFlag = false;
   }
  }
}
