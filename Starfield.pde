class particle {
  double myX, myY, mySpeed, myAngle;
  int myColor;

  particle() {
    myX = 250.0;
    myY = 250.0;
    mySpeed = (Math.random()*8+7);
    myAngle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }

  void move() {
    myX = myX + (Math.cos(myAngle)* mySpeed);
    myY = myY + (Math.sin(myAngle)* mySpeed);
  }

  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}

class oddBall extends particle {
  oddBall() {
    myX = 250.0;
    myY = 250.0;
    mySpeed = 6;
    myAngle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }

  void move() {
    myX = myX + (Math.cos(myAngle)* mySpeed);
    myY = myY + (Math.sin(myAngle)* mySpeed);
  }

  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 50, 50);

  }
}


particle [] p;

void setup() {
  noLoop();
  size(500, 500);  
  p = new particle [1000];
  for (int i = 0; i < 10; i++) {
    p[i] = new oddBall();
  }
  for (int i = 10; i < p.length; i++) {
    p[i] = new particle();
  }
}

void draw() {
  background(0);
  fill(0, 128, 0);
  rect(0, 350, 500, 150);
  fill(255);
  rect(225, 325, 50, 25);
  fill(255, 0, 0);
  rect(225, 300, 50, 25);
  fill(255);
  rect(225, 275, 50, 25);
  for (int i = 0; i < p.length; i++) {
    p[i].show();
    p[i].move();
  }
}
void mousePressed() {
  loop();
}
