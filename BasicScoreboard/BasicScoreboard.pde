State st;
PImage[] digit = new PImage[10];
PImage iBack, iMenu, iHeart, iBear, iSmiley, iBored, iRotten, iTomato, iFx;
boolean touched = false;
int num = 5;
color back = color(0);
color fore = color(255);
boolean fx = false;
int dir = 1;
int num1 = 0;
color back1 = color(0);
color fore1 = color(255);
int num2 = 0;
color back2 = color(255);
color fore2 = color(0);

void setup() {
  fullScreen();
  orientation(PORTRAIT);
  imageMode(CENTER);
  st = new Splash();
  iBack = loadImage("back.png");
  iBack.resize(width / 10, width / 10);
  iMenu = loadImage("menu.png");
  iMenu.resize(width / 10, width / 10);
  for(int n = 0; n < 10; n++) {
    digit[n] = loadImage(n + ".png");
    digit[n].resize(width * 5 / 6, 0);
  }
  iHeart  = loadImage("heart.png");
  iBear = loadImage("bear.png");
  iSmiley = loadImage("smiley.png");
  iBored  = loadImage("bored.png");
  iRotten = loadImage("rotten.png");
  iTomato = loadImage("tomato.png");
}

void draw() {
  st.draw();
}

void touchStarted() {
  if(touches[0].y < height - iBack.height || touches[0].x < iBack.width || touches[0].x > width - iMenu.width) touched = true;
}

void touchMoved() {
  st.touchMoved();
}

void touchEnded() {
  st.touchEnded();
  touched = false;
}