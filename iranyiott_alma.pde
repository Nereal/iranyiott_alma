PImage alma; 
float x;
boolean xd;
float y;
boolean yd;
color hatter;
float s;
float ir;
void setup () {
  size(500, 500);
  alma=loadImage("apple_PNG4943.png");
  x=0;
   y=0;
   xd=true;
   yd=true;
   s=0;
   ir=0;
}
void draw(){
   //hatter = color (mouseY, mouseX, mouseX+mouseY/2);
   hatter = color(255,255,255);
   background(hatter);
   image (alma, x, y, 100, 100);
    if (keyPressed) {
      if ((key == 'w' || key == 'W' || keyCode == UP) && ir != 1){
        xd = true; 
        yd = false;
        s=5;
        ir=1;
    }
    }
    if (keyPressed) {
      if ((key == 's' || key == 'S' || keyCode == DOWN) && ir!= 2) {
        xd = false;
        yd = true;
        s=5;
        ir=2;
    }
    }
    if (keyPressed) {
      if ((key == 'a' || key == 'A' || keyCode == LEFT) && ir!= 3){
        xd = false;
        yd = false;
        s=5;
        ir=3;
    }
    }
    if (keyPressed) {
      if ((key == 'd' || key == 'D' || keyCode == RIGHT) && ir!= 4){
        xd = true;
        yd = true;
        s=5;
        ir=4;
    }
    }
   if (xd & yd){
     x=x+s;
   }
   if (xd == false & yd) 
   {
     y=y+s;
   }
   if (xd == false & yd == false){
     x=x-s;
   }
  if (xd & yd == false){
     y=y-s;
   }
  if (x > width-100 && ir == 4){
   // xd= false;
    s=0;
  }
  if (x < 0 && ir == 3) {
  //  xd= true;
    s=0;
  }
  if (y > height-100 && ir == 2){
  //  yd= false;
    s=0;
  }
  if (y < 0 && ir == 1) {
 //   yd= true;
    s=0;
  }
}
// > < 