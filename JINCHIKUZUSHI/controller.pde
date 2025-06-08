//キー押す
void keyPressed() {
  if (key == 'w') w=true;
  if (key == 'a') a=true;
  if (key == 's') s=true;
  if (key == 'd') d=true;

  if (keyCode == LEFT) left=true;
  if (keyCode == RIGHT) right=true;
  if (keyCode == UP) up=true;
  if (keyCode == DOWN) down=true;
}

//キー放す
void keyReleased() {
  if (key == 'w') w=false;
  if (key == 'a') a=false;
  if (key == 's') s=false;
  if (key == 'd') d=false;

  if (keyCode == LEFT) left=false;
  if (keyCode == RIGHT) right=false;
  if (keyCode == UP) up=false;
  if (keyCode == DOWN) down=false;
}
