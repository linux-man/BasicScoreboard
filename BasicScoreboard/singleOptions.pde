class SingleOptions {
  
  void draw() {
    int dim = width / 6;
    pushMatrix();
    translate(0, height - 3 * dim - iBack.height);
    stroke(255);
    fill(0);
    rect(0, 0, dim, dim);
    tint(255);
    image(digit[0], dim / 2, dim / 2, dim * 0.8, dim * 0.8);
    rect(dim, 0, dim, dim);
    tint(255, 0, 0);
    image(digit[1], dim + dim / 2, dim / 2, dim * 0.8, dim * 0.8);
    rect(dim * 2, 0, dim, dim);
    tint(0, 255, 0);
    image(digit[2], dim * 2 + dim / 2, dim / 2, dim * 0.8, dim * 0.8);
    rect(dim * 3, 0, dim, dim);
    tint(0, 0, 255);
    image(digit[3], dim * 3 + dim / 2, dim / 2, dim * 0.8, dim * 0.8);
    rect(dim * 4, 0, dim, dim);
    tint(255, 255, 0);
    image(digit[4], dim * 4 + dim / 2, dim / 2, dim * 0.8, dim * 0.8);
    rect(dim * 5, 0, dim, dim);
    tint(255, 0, 255);
    image(digit[5], dim * 5 + dim / 2, dim / 2, dim * 0.8, dim * 0.8);

    stroke(0);
    fill(255);
    rect(0, dim, dim, dim);
    tint(0);
    image(digit[6], dim / 2, dim + dim / 2, dim * 0.8, dim * 0.8);
    rect(dim, dim, dim, dim);
    tint(139, 0, 0);
    image(digit[7], dim + dim / 2, dim + dim / 2, dim * 0.8, dim * 0.8);
    rect(dim * 2, dim, dim, dim);
    tint(0, 139, 0);
    image(digit[8], dim * 2 + dim / 2, dim + dim / 2, dim * 0.8, dim * 0.8);
    rect(dim *  3, dim, dim, dim);
    tint(0, 0, 139);
    image(digit[9], dim * 3 + dim / 2, dim + dim / 2, dim * 0.8, dim * 0.8);
    rect(dim * 4, dim, dim, dim);
    tint(139, 139, 0);
    image(digit[0], dim * 4 + dim / 2, dim + dim / 2, dim * 0.8, dim * 0.8);
    rect(dim * 5, dim, dim, dim);
    tint(139, 0, 139);
    image(digit[1], dim * 5 + dim / 2, dim + dim / 2, dim * 0.8, dim * 0.8);

    stroke(255);
    fill(0);
    tint(255);
    rect(0, dim * 2, dim, dim);
    image(iHeart, dim / 2, dim * 2 + dim / 2, dim * 0.8, dim * 0.8);
    fill(0);
    rect(dim, dim * 2, dim, dim);
    image(iBear, dim + dim / 2, dim * 2 + dim / 2, dim * 0.8, dim * 0.8);
    fill(0);
    rect(dim * 2, dim * 2, dim, dim);
    image(iSmiley, dim * 2 + dim / 2, dim * 2 + dim / 2, dim * 0.8, dim * 0.8);
    fill(0);
    rect(dim * 3, dim * 2, dim, dim);
    image(iBored, dim * 3 + dim / 2, dim * 2 + dim / 2, dim * 0.8, dim * 0.8);
    fill(0);
    rect(dim * 4, dim * 2, dim, dim);
    image(iRotten, dim * 4 + dim / 2, dim * 2 + dim / 2, dim * 0.8, dim * 0.8);
    fill(0);
    rect(dim * 5, dim * 2, dim, dim);
    image(iTomato, dim * 5 + dim / 2, dim * 2 + dim / 2, dim * 0.8, dim * 0.8);
    popMatrix();
    
    stroke(0);
  }

  void touchEnded() {
    int transl = height - 3 * width / 6 - iBack.height;
    switch((mouseY - transl) / (width / 6)) {
      case 0:
        back = color(0);
        fx =false;
        switch(mouseX / (width / 6)) {
          case 0: fore = color(255); break;
          case 1: fore = color(255, 0, 0); break;
          case 2: fore = color(0, 255, 0); break;
          case 3: fore = color(0, 0, 255); break;
          case 4: fore = color(255, 255, 0); break;
          case 5: fore = color(255, 0, 255); break;
        }
        break;
      case 1:
        back = color(255);
        fx = false;
        switch(mouseX / (width / 6)) {
          case 0: fore = color(0); break;
          case 1: fore = color(139, 0, 0); break;
          case 2: fore = color(0, 139, 0); break;
          case 3: fore = color(0, 0, 139); break;
          case 4: fore = color(139, 139, 0); break;
          case 5: fore = color(139, 0, 139); break;
        }
        break;
      case 2:
        back = color(0);
        fore = color(255);
        fx = true;
        switch(mouseX / (width / 6)) {
          case 0: iFx = iHeart; dir = -1; break;
          case 1: iFx = iBear; dir = -1; break;
          case 2: iFx = iSmiley; dir = -1; break;
          case 3: iFx = iBored; dir = 1; break;
          case 4: iFx = iRotten; dir = 1; break;
          case 5: iFx = iTomato; dir = 1; break;
        }
        break;
    }
  }
}