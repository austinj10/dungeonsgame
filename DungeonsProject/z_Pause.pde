void pause(){
  background(dirt);
  fill(shadow);
  textSize(100);
  text("upgrades",width/2,height/6);
  textSize(60);
  textMode(CENTER/2);
  text("hp:"+myHero.hp, 100, height/3);
  text("speed:"+myHero.speed, 150, height/2);
  text("damage", 160, height/1.5);
  //text();
}



void pauseClicks(){
  if (mouseX > 0 && mouseX <  width && mouseY > 0 && mouseY < height){
    mode = game;
  }
}
