 void setup(){
  size(400,400);
}

int widSpa=10,lenSpa=10,space=20;
float scale=0.5;
float showerWid=50*scale,showerLeng=100*scale,showerDif=10*scale,showerDe=110*scale;
void draw(){
  showerHub();
  cup(200,120);
}

void cup(float x,float y){
rect(x,y,showerLeng/2,showerLeng/2,10);
ellipse(x+showerLeng/4,y+showerLeng/1.3,showerLeng,showerWid);
ellipse(x+showerLeng/4,y+showerLeng/1.5,showerWid*1.8,showerWid/2.5);
ellipse(x+showerLeng/4,y+showerLeng/1.6,showerWid*1.6,showerWid/3);

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
