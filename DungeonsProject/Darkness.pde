class DarknessCell {
  float opacity;
  float x,y,size;
  float d;
  
  
  DarknessCell(float _x, float _y, float s){
    size = s;
    x = _x;
    y = _y;
    d = 10;
    opacity = 0;
  }
  
  void show(){
    //d = dist(x,y,x,y);
    //opacity = map(d, 0, 10, 0, 255);
    rectMode(CENTER);
    fill(255);
    square(x,y,size);
  }
  
  void act(){
    
  }
  
}
