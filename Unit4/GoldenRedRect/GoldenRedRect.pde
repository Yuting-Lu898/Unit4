void setup() {
  size(400, 400);
  background(255, 0, 0);
  rectMode(CENTER);
}

int widSpa=10, lenSpa=10, wid=40, space=wid/2+2;
void draw() {

  for (int i=0; i<=width/wid; i+=1) {
    line((space+wid)*i, 0, (space+wid)*i, height);
    line(0, (space+wid)*i, width, (space+wid)*i);
    //
    line((space+wid)*i-(wid+space)/2, 0, (space+wid)*i-(wid+space)/2, height);
    line(0, (space+wid)*i-(wid+space)/2, width, (space+wid)*i-(wid+space)/2);
    for (int j=0; j<=width/wid; j+=1) {
      cube((space+wid)*i, j*(space+wid));
      cube((space+wid)*i-(wid+space)/2, j*(space+wid)-(wid+space)/2);
    }
  }
}

void cube(int x, int y) {
  noFill();
  stroke(255, 215, 0);
  rect(x, y, wid, wid);
  rect(x, y, 6, 6);
}
