class Single extends State {
  int sel = 0;
  boolean showOptions = false;
  SingleOptions o;

  Single() {
    o = new SingleOptions();
  }
  
  void draw() {
    background(back);
    tint(fore);
    if(fx) {
      for(int n = 0; n < 10; n++) {
        pushMatrix();
        translate(width / 8 + (width * 3 / 4) / 9 * n, dir * ((millis() / 10 + height / (n + 1)) * ((2 * n + 3) % 10)) % height - (dir - 1) / 2 * height);
        rotate(HALF_PI / 10 * n - QUARTER_PI);
        image(iFx, 0, 0, width / 4, width / 4);
        popMatrix();
      }
    }
    if(num < 10) image(digit[num], width / 2, height / 2);
    else {
      image(digit[(int)num / 10], width / 4, height / 2, digit[1].width / 2, digit[1].height);
      image(digit[(int)num % 10], width * 3 / 4, height / 2, digit[1].width / 2, digit[1].height);
    }
    fill(192);
    if(sel == 1) rect(0, height - iBack.height, iBack.width, iBack.height);
    else if(sel == 2) rect(width - iBack.width, height - iBack.height, iBack.width, iBack.height);
    if(showOptions) o.draw();
    tint(255);
    image(iBack, iBack.width / 2, height - iBack.height / 2);
    image(iMenu, width - iMenu.width / 2, height - iMenu.height / 2);
  }
  
  void touchMoved() {
    sel = 0;
    if(touched) {
      if(mouseY > height - iBack.height) {
        if(mouseX < iBack.width) sel = 1;
        else if(mouseX > width - iMenu.width) sel = 2;
      }
    }
  }

  void touchEnded() {
    sel = 0;
    if(touched) {
      if(mouseY > height - iBack.height) {
        if(mouseX < iBack.width) st = new Menu();
        else if(mouseX > width - iMenu.width) showOptions = ! showOptions;
      }
      else if(!showOptions) {
        if(mouseY < (height - iBack.height) / 8) num = min(num + 10, 99);
        else if(mouseY < (height - iBack.height) / 2) num = min(num + 1, 99);
        else if(mouseY < (height - iBack.height) * 7 / 8) num = max(num - 1, 0);
        else num = max(num - 10, 0);
      }
      else {
        o.touchEnded();
        showOptions = false;
      }
    }
  }
}