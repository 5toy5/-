/* block関係のタブ */
/* blockに関する変数や関数をここに書く */

final int MAX_BLOCKS = 48;

float [] blockX = new float[MAX_BLOCKS];
float [] blockY = new float[MAX_BLOCKS];
float [] blockWidth = new float[MAX_BLOCKS];
float [] blockHeight = new float[MAX_BLOCKS];
boolean [] hitFlag = new boolean[MAX_BLOCKS];

final int BLOCK_COLUMNS = 6; // ブロックの縦の数
final int BLOCK_GAP  = 2;  // ブロック間の距離
final int WALL_GAPX   = 453;


void arrangeBlocks() {
  // ブロックの個数分繰り返す
  for ( int i = 0; i < MAX_BLOCKS; i++ ) {
    blockWidth[i] = 85.0f;
    blockHeight[i] = 148.3334f;
    blockY[i] = i % BLOCK_COLUMNS * (blockHeight[i]  + BLOCK_GAP);
    blockX[i] = WALL_GAPX + i / BLOCK_COLUMNS * (blockWidth[i] + BLOCK_GAP);
    if(i>23){hitFlag[i] = true;}
  }
}


void checkBlockCollision(){
  for (int i = 0; i < MAX_BLOCKS; i++){
    if(hitFlag[i] == true){
      if( (blockX[i] <= ballRedX && ballRedX <= blockX[i] + blockWidth[i] && blockY[i] <= ballRedY - ballRedRadius && ballRedY - ballRedRadius <= blockY[i] + blockHeight[i]) || 
          (blockX[i] <= ballRedX + ballRedRadius && ballRedX + ballRedRadius <= blockX[i] + blockWidth[i] && blockY[i] <= ballRedY && ballRedY <= blockY[i] + blockHeight[i])||
          (blockX[i] <= ballRedX && ballRedX <= blockX[i] + blockWidth[i] && blockY[i] <= ballRedY + ballRedRadius && ballRedY + ballRedRadius <= blockY[i] + blockHeight[i])||
          (blockX[i] <= ballRedX - ballRedRadius && ballRedX - ballRedRadius <= blockX[i] + blockWidth[i] && blockY[i] <= ballRedY && ballRedY <= blockY[i] + blockHeight[i]) ){
        hitFlag[i] = false;      
        if(preballRedX <= blockX[i] || preballRedX >= blockX[i] + blockWidth[i]){
//          seBallBlock.trigger();
          ballRedVX = -ballRedVX;
        }
        if(preballRedY <= blockY[i] || preballRedY >= blockY[i] + blockHeight[i]){
//          seBallBlock.trigger();
          ballRedVY = -ballRedVY;
        }
      }
    }else{
      if( (blockX[i] <= ballBlueX && ballBlueX <= blockX[i] + blockWidth[i] && blockY[i] <= ballBlueY - ballBlueRadius && ballBlueY - ballBlueRadius <= blockY[i] + blockHeight[i]) || 
          (blockX[i] <= ballBlueX + ballBlueRadius && ballBlueX + ballBlueRadius <= blockX[i] + blockWidth[i] && blockY[i] <= ballBlueY && ballBlueY <= blockY[i] + blockHeight[i])||
          (blockX[i] <= ballBlueX && ballBlueX <= blockX[i] + blockWidth[i] && blockY[i] <= ballBlueY + ballBlueRadius && ballBlueY + ballBlueRadius <= blockY[i] + blockHeight[i])||
          (blockX[i] <= ballBlueX - ballBlueRadius && ballBlueX - ballBlueRadius <= blockX[i] + blockWidth[i] && blockY[i] <= ballBlueY && ballBlueY <= blockY[i] + blockHeight[i]) ){
        hitFlag[i] = true;
        if(preballBlueX <= blockX[i] || preballBlueX >= blockX[i] + blockWidth[i]){
//          seBallBlock.trigger();
          ballBlueVX = -ballBlueVX;
        }
        if(preballBlueY <= blockY[i] || preballBlueY >= blockY[i] + blockHeight[i]){
//          seBallBlock.trigger();
          ballBlueVY = -ballBlueVY;
        }
      }
    }
  }
}
          
          
/* ブロックの描画 */
void drawBlocks() {
  // ブロックの個数分繰り返す
  for ( int i = 0; i < MAX_BLOCKS; i++ ) {
    if ( hitFlag[i] == false ) { // ブロックが存在しているなら
      fill(200,30,30);
      rect(blockX[i], blockY[i], blockWidth[i], blockHeight[i]);
    }else{fill(30,30,200);
    rect(blockX[i], blockY[i], blockWidth[i], blockHeight[i]);
    }
  }
}
