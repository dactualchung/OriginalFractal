int timer = 0;
int angl = -100;
boolean stop = false;
public void setup(){
  size(800,800);
}
public void draw(){
  if(timer >= 1){
    if(stop == false){
      angl++;
      if(angl == 360){
        angl = 0;
      }
    }
    background(0);
    timer = 0;
    textAlign(CENTER, CENTER);
    textSize(24);
    text(angl+"°", 50, 30);
  }else{
    timer++;
 }
  fractal(450/2,450/2,200, angl*PI/180);
}
public void fractal(float x, float y, float size, float angle){
  rectMode(CENTER);
  ellipse(x+400,y+400,size,size);  
  if(size > 1){
    fractal((float)(x*cos(angle) - y*sin(angle)),(float)(x*sin(angle)+y*cos(angle)),(float)(size - 1), angle);
  }
}
void mouseClicked() {
  if (stop == false) {
    stop = true;
  } else {
    stop = false;
  }
}
