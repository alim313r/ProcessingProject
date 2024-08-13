class Pyramid {
  int t = 15, top = 0, bottom = 10;
  float x, y, pyPosX, pyPosY;
  boolean touched = false;
  float spaceX = random(0, 50), spaceY = random(0, 50);
  float mouseCheck = 3;
 
  void display () {

    if (touched) {

      float dist = dist(pyPosX, pyPosY, mouseX, mouseY);
      top = 30;
      //x = (mouseX / mouseCheck) - (dist / 81);
      //y = (mouseY / mouseCheck) - (dist / 81);
      ////top = mouseX;

      float stretch = dist / (width);

      if (stretch > 0.8) {
        stretch = 0.8;
      }


      float xMid = lerp(pyPosX, mouseX, 1 - stretch);
      float yMid = lerp(pyPosY, mouseY, 1 - stretch);

      println(stretch);
      pushMatrix();


      translate(xMid, yMid, 0);
      //rotate(y);

      popMatrix();

      x=xMid;
      y=yMid;
    }


    beginShape(TRIANGLES);

    fill(156, 237, 255);
    if (touched) {
      fill(255, 0, 0);
    }
    vertex(pyPosX-t, pyPosY-t, bottom-t);
    vertex( pyPosX+t, pyPosY-t, bottom-t);
    vertex( x, y, top);

    fill(129, 198, 212);
    if (touched) {
      fill(255, 0, 0);
    }
    vertex( pyPosX+t, pyPosY-t, bottom-t);
    vertex( pyPosX+t, pyPosY+t, bottom-t);
    vertex( x, y, top);

    fill(87, 135, 145);
    if (touched) {
      fill(255, 0, 0);
    }
    vertex( pyPosX+t, pyPosY+t, bottom-t);
    vertex(pyPosX-t, pyPosY+t, bottom-t);
    vertex( x, y, top);

    fill(110, 173, 186);
    if (touched) {
      fill(255, 0, 0);
    }
    vertex(pyPosX-t, pyPosY+t, bottom-t);
    vertex(pyPosX-t, pyPosY-t, bottom-t);
    vertex( x, y, top);


    endShape();
  }
}
