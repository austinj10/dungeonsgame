void game(){

  
  drawRoom();
  drawGameObjects();
  drawDarkness();
  //drawLightLayer();
  //drawMiniMap();
  
  //int i = 0;
  //while ( i < myObjects.size()) {
  // GameObject myObj = myObjects.get(i);
  // myObj.show();
  // myObj.act();
  //}
  //myHero.show();
  //myHero.act();
  

}

void drawRoom(){
 background(shadow);
 
 //corners
 stroke(stone);
 strokeWeight(3);
 line(0,0,width,height);
 line(width,0,0,height);
 
 //draw exits
 northroom = map.get(myHero.roomX, myHero.roomY-1);
 eastroom = map.get(myHero.roomX+1, myHero.roomY);
 southroom = map.get(myHero.roomX, myHero.roomY+1);
 westroom = map.get(myHero.roomX-1, myHero.roomY);
 
 noStroke();
 fill(0);
 if (northroom != #FFFFFF){
  ellipse(width/2,50,100,100); 
 }
 if (eastroom != #FFFFFF){
  ellipse(width-50,height/2,100,100); 
 }
 if (southroom != #FFFFFF){
  ellipse(width/2,height-50,100,100); 
 }
 if (westroom != #FFFFFF){
  ellipse(50,height/2,100,100); 
 }
 
 
 //floor
 stroke(shadow);
 fill(stone);
 rect(width/2,height/2,width-100,height-75);
}

void drawGameObjects(){
  int i = 0;
  while ( i < myObjects.size()) {
    GameObject myObj = myObjects.get(i);
    myObj.show();
    myObj.act();
  if (myObj.hp == 0) {
      myObjects.remove(i); 
    } else {
      i++;
    }
  }
}

void drawDarkness(){
  int i = 0;
  while ( i < darkness.size()) {
    DarknessCell myObj = darkness.get(i);
    myObj.show();
    i++;
  } 
}
  
  ////darkness
  //int ii = 0;
  //while (ii < darkness.size()){
  //  darkness.get(i).act();
  //  darkness.get(i).show();
  //  i++;
  

  
  


void gameClicks(){
  }
