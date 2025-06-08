void drawBackground0(){
  background(0);
}

void drawBackground1(){
  
  //ボールの残像を残す背景描画処理
  fill(0,0,0,50);
  noStroke();
  rect(0,0,width,height);
  
  //line
  stroke(255,255,0);
  strokeWeight(1);
  line(353,0,353,height);
  line(1247,0,1247,height);
}
