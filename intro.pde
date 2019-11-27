void intro() {
  
  background(255);
  textSize(72);
  if (mouseX<300 && mouseY<650 && mouseX>500 && mouseY>550) {
   fill(255);
  } else {
   fill(0);
  }
  text("CLICKER GAME", 400, 400);
  
  if (mouseX<300 && mouseY<650 && mouseX>500 && mouseY>550) {
   fill(255);
  } else {
   fill(0);
  }
  rect(400,600,200,100);
  
  
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY>550 && mouseY < 650) {
   mode = GAME;
  }
}
