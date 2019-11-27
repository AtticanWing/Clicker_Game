void game() {
  background(0,255,0);
  
  //scoreboard
  textSize(50);
  fill(0);
  text("SCORE: " + score, 150,50);
  text("LIVES: " + lives, 150,150);
  
  //drawing the target
  stroke(0);
  fill(255);
  strokeWeight(4);
  ellipse(tx,ty,100,100);
  
  //moving and bouncing
  tx = tx + vx;
  ty = ty + vy;
  
  if (ty < 50 || ty > height - 50) vy = -vy; //if bouncing off top or bottom
  if (tx < 50 || tx > width - 50) vx = -vx; 
}

void gameClicks() {
  if (dist(mouseX, mouseY, tx,ty) < 50) {
    score++; //score = score + 1;
  } else {
    lives = lives - 1;
    if (lives == 0) {
     mode = GAMEOVER;
    }
  }
}
