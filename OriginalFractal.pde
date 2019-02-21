int timer = 0;
int angl = 1;
boolean stop = false;
public void setup(){
  size(800,800);
}
public void draw(){
  if(timer > 1){
    if(stop == false){
      angl++;
    }
    background(0);
    timer = 0;
    println(angl);
  }else{
    timer++;
 }
  fractal(500/2,500/2,200, angl*PI/180);
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
