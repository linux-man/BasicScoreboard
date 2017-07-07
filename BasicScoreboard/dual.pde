class Dual extends State {
  int sel = 0;
  boolean showOptions = false;
  DualOptions o;

  Dual() {
    o = new DualOptions();
  }
  
  void draw() {
    fill(back1);
    rect(0, 0, width, height / 2);

    fill(back2);
    rect(0, height / 2, width, height / 2);

    tint(fore1);
    if(num1 < 10) {
      pushMatrix();
      translate(width / 2, height / 4);
      rotate(HALF_PI);
      image(digit[num1], 0, 0, height / 2 * 5 / 6, width * 5 / 6);
      popMatrix();
    }
    else {
      pushMatrix();
      translate(width / 2, height / 2 / 4);
      rotate(HALF_PI);
      image(digit[(int)num1 / 10], 0, 0,  height / 4 * 5 / 6, width * 5 / 6);
      popMatrix();
      pushMatrix();
      translate(width / 2, height / 2 * 3 / 4);
      rotate(HALF_PI);
      image(digit[(int)num1 % 10], 0, 0, height / 4 * 5 / 6, width * 5 / 6);
      popMatrix();
    }

    tint(fore2);
    if(num2 < 10) {
      pushMatrix();
      translate(width / 2, height * 3 / 4);
      rotate(HALF_PI);
      image(digit[num2], 0, 0, height / 2 * 5 / 6, width * 5 / 6);
      popMatrix();
    }
    else {
      pushMatrix();
      translate(width / 2, height / 2 + height / 2 / 4);
      rotate(HALF_PI);
      image(digit[(int)num2 / 10], 0, 0,  height / 4 * 5 / 6, width * 5 / 6);
      popMatrix();
      pushMatrix();
      translate(width / 2, height / 2 + height / 2 * 3 / 4);
      rotate(HALF_PI);
      image(digit[(int)num2 % 10], 0, 0, height / 4 * 5 / 6, width * 5 / 6);
      popMatrix();
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
        if(mouseY < height / 2) {
          if(mouseX > width * 7 / 8) num1 = min(num1 + 10, 99);
          else if(mouseX > width / 2) num1 = min(num1 + 1, 99);
          else if(mouseX > width / 8) num1 = max(num1 - 1, 0);
          else num1 = max(num1 - 10, 0);
        }
        else {
          if(mouseX > width * 7 / 8) num2 = min(num2 + 10, 99);
          else if(mouseX > width / 2) num2 = min(num2 + 1, 99);
          else if(mouseX > width / 8) num2 = max(num2 - 1, 0);
          else num2 = max(num2 - 10, 0);
        }
      }
      else {
        o.touchEnded();
        showOptions = false;
      }
    }
  }

}