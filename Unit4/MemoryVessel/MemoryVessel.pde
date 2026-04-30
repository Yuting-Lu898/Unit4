 void setup(){
  size(400,400);
}

int widSpa=10,lenSpa=10,space=20;
float scale=0.5;
float showerWid=50*scale,showerLeng=100*scale,showerDif=10*scale,showerDe=110*scale;
void draw(){
  showerHub();
  cup(200,120);
  girl(100,120);
}

void girl(float x,float y){
circle(x+space,y,showerDe);
rect(x-space,y+25,showerLeng*1.6,showerDe*2,50);
rect(x,y,40,25,50);
pushStyle();
rotate(radians(-5));
rect(x-lenSpa-25,y+showerWid*1.8+15,showerLeng*0.7,showerDe*1.6,50);
rect(x-lenSpa+showerLeng*0.6-20,y+showerWid*1.8+15,showerLeng*0.7,showerDe*1.6,50);
popStyle();
rect(x-40,y,showerLeng*0.6,showerDe*1.6,50);
rect(x-5,y,showerLeng*0.6,showerDe*1.6,50);
}

void cup(float x,float y){
rect(x,y,showerLeng/2,showerLeng/2,10);
ellipse(x+showerLeng/4,y+showerLeng/1.3,showerLeng,showerWid);
ellipse(x+showerLeng/4,y+showerLeng/1.5,showerWid*1.8,showerWid/2.5);
ellipse(x+showerLeng/4,y+showerLeng/1.6,showerWid*1.6,showerWid/3);
arc(x,y,100,10,10,10);
}



















void showerHub(){
shower(130,100);
}

void shower(int x,int y){
  pushStyle();
  fill(0);
triangle(x,y,x+showerWid,y+showerDif,x,y+showerLeng);
triangle(x+showerWid,y+showerDe,x+showerWid,y+showerDif, x,y+showerLeng);
triangle(x+showerLeng,y ,x+showerWid,y+showerDif,  x+showerWid,y+showerDe);
triangle(x+showerLeng,y ,x+showerWid,y+showerDe,  x+showerLeng,y+showerLeng);
stroke(255);
fill(255);
triangle(x,y, x+showerWid,y+showerDif,x+showerWid,y-showerDif);
triangle(x+showerLeng,y, x+showerWid,y+showerDif,x+showerWid,y-showerDif);
popStyle();

}
