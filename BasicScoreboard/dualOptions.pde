class DualOptions {
  
  void draw() {
    drawOptions();
    pushMatrix();
    translate(0, height - 2 * width / 6 - iBack.height);
    drawOptions();
    popMatrix();
    stroke(0);
  }

  void touchEnded() {
    int transl = height - 2 * width / 6 - iBack.height;
    switch(mouseY / (width / 6)) {
      case 0:
        back1 = color(0);
        switch(mouseX / (width / 6)) {
          case 0: fore1 = color(255); break;
          case 1: fore1 = color(255, 0, 0); break;
          case 2: fore1 = color(0, 255, 0); break;
          case 3: fore1 = color(0, 0, 255); break;
          case 4: fore1 = color(255, 255, 0); break;
          case 5: fore1 = color(255, 0, 255); break;
        }
        break;
      case 1:
        back1 = color(255);
        switch(mouseX / (width / 6)) {
          case 0: fore1 = color(0); break;
          case 1: fore1 = color(139, 0, 0); break;
          case 2: fore1 = color(0, 139, 0); break;
          case 3: fore1 = color(0, 0, 139); break;
          case 4: fore1 = color(139, 139, 0); break;
          case 5: fore1 = color(139, 0, 139); break;
        }
        break;
    }

    switch((mouseY - transl) / (width / 6)) {
      case 0:
        back2 = color(0);
        switch(mouseX / (width / 6)) {
          case 0: fore2 = color(255); break;
          case 1: fore2 = color(255, 0, 0); break;
          case 2: fore2 = color(0, 255, 0); break;
          case 3: fore2 = color(0, 0, 255); break;
          case 4: fore2 = color(255, 255, 0); break;
          case 5: fore2 = color(255, 0, 255); break;
        }
        break;
      case 1:
        back2 = color(255);
        switch(mouseX / (width / 6)) {
          case 0: fore2 = color(0); break;
          case 1: fore2 = color(139, 0, 0); break;
          case 2: fore2 = color(0, 139, 0); break;
          case 3: fore2 = color(0, 0, 139); break;
          case 4: fore2 = color(139, 139, 0); break;
          case 5: fore2 = color(139, 0, 139); break;
        }
        break;
    }
  }

  void drawOptions() {
    int dim = width / 6;
    stroke(255);
    fill(0);
    rect(0, 0, dim, dim);
    tint(255);
    pushMatrix();
    translate(dim / 2, dim / 2);
    rotate(HALF_PI);
    image(digit[0], 0, 0, dim * 0.8, dim * 0.8);
    popMatrix();
    rect(dim, 0, dim, dim);
    tint(255, 0, 0);
    pushMatrix();
    translate(dim + dim / 2, dim / 2);
    rotate(HALF_PI);
    image(digit[1], 0, 0, dim * 0.8, dim * 0.8);
    popMatrix();
    rect(dim * 2, 0, dim, dim);
    tint(0, 255, 0);
    pushMatrix();
    translate(dim * 2 + dim / 2, dim / 2);
    rotate(HALF_PI);
    image(digit[2], 0, 0, dim * 0.8, dim * 0.8);
    popMatrix();
    rect(dim * 3, 0, dim, dim);
    tint(0, 0, 255);
    pushMatrix();
    translate(dim * 3 + dim / 2, dim / 2);
    rotate(HALF_PI);
    image(digit[3], 0, 0, dim * 0.8, dim * 0.8);
    popMatrix();
    rect(dim * 4, 0, dim, dim);
    tint(255, 255, 0);
    pushMatrix();
    translate(dim * 4 + dim / 2, dim / 2);
    rotate(HALF_PI);
    image(digit[4], 0, 0, dim * 0.8, dim * 0.8);
    popMatrix();
    rect(dim * 5, 0, dim, dim);
    tint(255, 0, 255);
    pushMatrix();
    translate(dim * 5 + dim / 2, dim / 2);
    rotate(HALF_PI);
    image(digit[5], 0, 0, dim * 0.8, dim * 0.8);
    popMatrix();
    
    stroke(0);
    fill(255);
    rect(0, dim, dim, dim);
    tint(0);
    pushMatrix();
    translate(dim / 2, dim + dim / 2);
    rotate(HALF_PI);
    image(digit[6], 0, 0, dim * 0.8, dim * 0.8);
    popMatrix();
    rect(dim, dim, dim, dim);
    tint(139, 0, 0);
    pushMatrix();
    translate(dim + dim / 2, dim + dim / 2);
    rotate(HALF_PI);
    image(digit[7], 0, 0, dim * 0.8, dim * 0.8);
    popMatrix();
    rect(dim * 2, dim, dim, dim);
    tint(0, 139, 0);
    pushMatrix();
    translate(dim * 2 + dim / 2, dim + dim / 2);
    rotate(HALF_PI);
    image(digit[8], 0, 0, dim * 0.8, dim * 0.8);
    popMatrix();
    rect(dim *  3, dim, dim, dim);
    tint(0, 0, 139);
    pushMatrix();
    translate(dim * 3 + dim / 2, dim + dim / 2);
    rotate(HALF_PI);
    image(digit[9], 0, 0, dim * 0.8, dim * 0.8);
    popMatrix();
    rect(dim * 4, dim, dim, dim);
    tint(139, 139, 0);
    pushMatrix();
    translate(dim * 4 + dim / 2, dim + dim / 2);
    rotate(HALF_PI);
    image(digit[0], 0, 0, dim * 0.8, dim * 0.8);
    popMatrix();
    rect(dim * 5, dim, dim, dim);
    tint(139, 0, 139);
    pushMatrix();
    translate(dim * 5 + dim / 2, dim + dim / 2);
    rotate(HALF_PI);
    image(digit[1], 0, 0, dim * 0.8, dim * 0.8);
    popMatrix();
  }
}