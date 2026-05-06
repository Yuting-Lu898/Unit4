void father(float x,float y){
//right arm
  pushMatrix();
rotate(radians(-15));
rect(x-140,y+120,100,20,5);
popMatrix();
//left arm;
pushMatrix();
rotate(radians(-10));
rect(x+10,y+110,20,100,10);
popMatrix();


circle(x+7,y+5,20);//hair
circle(x+25,y+5,30);
rect(x-space,y+50,showerLeng*1.6,showerDe*2,50);//body
rect(x,y,40,50,50);//face

//legs
triangle(x-10,y+150,x-13,y+250,x+15,y+250);
triangle(x-10,y+150,x+20,y+150,x+15,y+250);
triangle(x+50,y+150,x+20,y+150,x+23,y+250);
triangle(x+53,y+250,x+50,y+150,x+23,y+250);

}
