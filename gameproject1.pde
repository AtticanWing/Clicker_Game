int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//TARGET VARIABLES----------------------------------------------------------------------------------------
float tx, ty; //target position
int score, lives;
float vx, vy; //velocity

void setup() { //unexpected token void is almost always missing brace
  size(800,800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  
  //intialize target
  tx = width/2;
  ty = height/2;
  vx = random(-3,3);
  vy = random(-3,3);
  score = 0;
  lives = 5;
}

void draw() {
  if (mode == INTRO) {
   intro();
  } else if (mode == GAME) {
   game();
  } else if (mode == PAUSE) {
   pausescreen();
  } else if (mode == GAMEOVER) {
   gameover();
  } else {
   println("Mode Error: Mode is " + mode);
  }
}
