class Bullet extends GameObject {

  int lives; 
  int timer;
  float size;
  

  //constructor(s)
  Bullet() {
    timer = 30;
    lives = 1;
    location = new PVector(myHero.location.x, myHero.location.y);
    velocity = new PVector(0,0);
    velocity.setMag(10);
    size = 10;
    //velocity.add(ship.velocity);
  }
  
    Bullet(PVector mouse, int color1, int size1) {
      timer = 30;
      lives = 1;
      location = new PVector(myHero.location.x, myHero.location.y);
      velocity = mouse;
      velocity.setMag(10);
      size = size1;
      stone = color1;
      }

  void show() {
    stroke(0);
    fill(0);
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();
    timer--;
    if (timer == 0) {
      lives = 0;
    }
    //int i = 0;
    //if (lives == 0) {
    // GameObject.Bullet.remove(); 
    //} 
  }
  
}
