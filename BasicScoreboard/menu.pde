class Menu extends State {
  PImage single, dual;
  int sel = 0;

  Menu() {
    single = loadImage("single.png");
    dual = loadImage("dual.png");
    single.resize(0, width / 2);
    dual.resize(width / 2, 0);
    tint(255);
    fill(255);
  }
  
  void draw() {
    background(0);
    if(sel == 1) rect(0, 0, width, height / 2);
    else if (sel == 2) rect(0, height / 2, width, height / 2);
    else if (sel == 3) rect(0, height - iBack.height, iBack.width, iBack.height);
    image(single, width / 2, height / 4);
    image(dual, width / 2, height * 3 / 4);
    image(iBack, iBack.width / 2, height - iBack.height / 2);
  }
  
  void touchMoved() {
    sel = 0;
    if(touched) {
      if(mouseY < height / 2) sel = 1;
      else if(mouseY < height - iBack.height) sel = 2;
      else if(mouseY > height - iBack.height && mouseX < iBack.width) sel = 3;
    }
  }

  void touchEnded() {
    sel = 0;
    if(touched) {
      if(mouseY < height / 2) st = new Single();
      else if(mouseY < height - iBack.height) st = new Dual();
      else if(mouseY > height - iBack.height && mouseX < iBack.width) System.exit(0);
    }
  }
}