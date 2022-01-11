void win() {
  background(dirt);
  textFont(VampireZone);
  textSize(80);
  fill(shadow);
  text("you win!",width/2, height/2);
}




void winClicks() {
  mode = intro;
  setup();
}
