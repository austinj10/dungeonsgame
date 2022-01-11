class Spawner extends Enemy {
  float timer;
  float timer2;
  float timer3;

  Spawner(int x, int y) {
    super(400, 175, x, y);
    timer = 0;
    timer2 = 0;
    timer3 = 0;
    xp = 3;
  }

  void show() {
    blackhole.show(location.x, location.y, size*1.25, size*1.25);
    fill(255);
    textSize(20);
    text(hp, location.x, location.y);
  }
  
  void act() {
    super.act();
    timer++;
    timer2++;
    timer3++;
    
    if (timer == 125) {
      myObjects.add(new Follower(roomX, roomY)); 
    }
    if (timer2 == 250){
      myObjects.add(new Follower(roomX, roomY)); 
    }
     if (timer3 == 375){
      myObjects.add(new Follower(roomX, roomY)); 
    }
  }
}
