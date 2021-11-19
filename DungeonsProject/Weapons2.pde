class Shotgun extends Weapon {
  Shotgun(){
    super(ShotgunThreshold,ShotgunBulletSpeed);
  }
   void shoot(){
    if (shotTimer >= threshold){
      for (int i = 0; i < 30; i++){
        PVector aimVector = new PVector(mouseX-myHero.location.x, mouseY-myHero.location.y);
        aimVector.rotate(random(0.35));
        aimVector.setMag(bulletSpeed);
        myObjects.add(new Bullet(aimVector, stone, 10));
        shotTimer = 0;
        }
    }
  }
}



class Pistol extends Weapon {
   Pistol(){
    super(40,7);
   }
}



class Sniper extends Weapon {
   Sniper(){
    super(100,20);
   }
}



class MachineGun extends Weapon {
   MachineGun(){
    super(10,9);
   }
}
