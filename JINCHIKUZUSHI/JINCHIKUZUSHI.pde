//author: 豊浦風羽

int scene = 0;
PFont font;

void setup(){
  size(1600, 900);
  background(0);
  arrangeBlocks();
  PFont font = loadFont("AgencyFB-Bold-255.vlw");
  textFont(font);
}

void draw(){
  if(scene == 0) scene0(); //スタート画面
  else if(scene == 1) scene1(); //プレイ画面
  else if(scene == 2) scene2(); //赤勝利画面
  else if(scene == 3) scene3(); //青勝利画面
}
