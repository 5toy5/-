//赤バーの初期値
//サイズ
float barRedWidth = 20.0f;
float barRedHeight = 120.0f;
//座標
float barRedX = 100.0f;
float barRedY = 390.0f;
//速度
float barRedVX = 6.0f;
float barRedVY = 6.0f;
//ボールに与える速度
float giveBallRedVY;

//青の初期値
//サイズ
float barBlueWidth = barRedWidth;
float barBlueHeight = barRedHeight;
//座標
float barBlueX = 1480.0f;//(width-barfX)-bartWidth(なぜかwidthが正しく動作しないので直接代入)
float barBlueY = barRedY;
//速度
float barBlueVX = barRedVX;
float barBlueVY = barRedVY;
//ボールに与える速度
float giveBallBlueVY;

//キー操作の真偽値
boolean w,a,s,d,left,right,up,down;

//当たり所によってボールの進む方向が変わる
void giveBallVY(){
  giveBallRedVY = ballRedY - ( barRedY + barRedHeight/2 );
  giveBallBlueVY = ballBlueY - ( barBlueY + barBlueHeight/2 );
}

//バーの動き
void moveBarRed(){
  //キー操作
   if(a==true) barRedX -= barRedVX; 
   if(d==true) barRedX += barRedVX;
   if(w==true) barRedY -= barRedVY;
   if(s==true) barRedY += barRedVY;

  /* はみ出し防止 */
  if ( barRedX < 0 ) { // 左端
    barRedX = 0;
  } else if ( 353 < barRedX + barRedWidth ) { // 右端
    barRedX = 353 - barRedWidth;
  }
  
  if ( barRedY < 0 ) { 
    barRedY = 0;
  } else if ( height < barRedY + barRedHeight ) { 
    barRedY = height - barRedHeight;
  }
}

void moveBarBlue(){  
  //キー操作
   if(left==true) barBlueX -= barBlueVX; 
   if(right==true) barBlueX += barBlueVX;
   if(up==true) barBlueY -= barBlueVY;
   if(down==true) barBlueY += barBlueVY;
   
  /* はみ出し防止 */
  if ( barBlueX < 1247 ) { // 左端
    barBlueX = 1247;
  } else if ( width < barBlueX + barBlueWidth ) { // 右端
    barBlueX = width - barBlueWidth;
  }
  
  if ( barBlueY < 0 ) { 
    barBlueY = 0;
  } else if ( height < barBlueY + barBlueHeight ) { 
    barBlueY = height - barBlueHeight;
  }
}

/* バーの描画 */
void drawBar() {
  fill(255,0,0);
  rect(barRedX, barRedY, barRedWidth, barRedHeight);    // バーの描画
  fill(0,0,255);
  rect(barBlueX, barBlueY, barBlueWidth, barBlueHeight);    // バーの描画
}
