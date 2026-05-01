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
  father(250,120);
}
void father(float x,float y){
circle(x+7,y+5,20);//hair
circle(x+25,y+5,30);
rect(x-space,y+25,showerLeng*1.6,showerDe*2,50);//face
rect(x,y,40,50,50);//body

}





























void girl(float x,float y){
pushStyle();
pushMatrix();
circle(x+space,y,showerDe);//hair
rect(x-space,y+25,showerLeng*1.6,showerDe*2,50);//face
rect(x,y,40,25,50);//body
rotate(radians(-5));
rect(x-lenSpa-20,y+showerWid*1.8+25,showerLeng*0.7,showerDe*1.4,50);//right leg
rect(x-lenSpa+showerLeng*0.6-20,y+showerWid*1.8+25,showerLeng*0.7,showerDe*1.4,50);//left leg
rotate(radians(15));
rect(x+25,y+35,showerLeng*0.55,showerDe*1.6,50);//right fore leg
rect(x+50,y+30,showerLeng*0.55,showerDe*1.6,50);//left fore leg
rect(x+70,y+5,space*1.1,showerLeng*1.1,100);
popMatrix();
pushMatrix();
rotate(radians(-1));
rect(x-25,y+showerLeng/1.5,space*1.1,showerLeng/1.1,100);
popMatrix();
rect(x-20,y+showerLeng*1.2,showerLeng*1.1,space,100);
rect(x-10,y+showerLeng*1.4,showerLeng*1.2,space,100);
noStroke();
fill(0);
circle(x-11,y+showerLeng*1.3-3,20);
circle(x+50,y+showerLeng*1.6-5,23);
popStyle();
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
