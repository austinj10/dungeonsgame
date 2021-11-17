class Weapon{
  int shotTimer;
  int threshold;
  int bulletSpeed;
  
  Weapon(){
   shotTimer = 0;
   threshold = 20;
   bulletSpeed = 5;
  }
  
  Weapon (int thr, int bs){
    shotTimer = 0;
    threshold = thr;
    bulletSpeed = bs;
  }
  
  void update(){
    shotTimer++; 
  }
  
  void shoot(){
    if (shotTimer >= threshold){
      PVector aimVector = new PVector(mouseX-myHero.location.x, mouseY-myHero.location.y);
      aimVector.setMag(bulletSpeed);
      myObjects.add(new Bullet(aimVector, stone, 10));
      shotTimer = 0;
    }
 
  }
  
}
