float x, y;
Pyramid[] pyramids;
int count = 0;
int xPos = 0, yPos =0;
void setup() {
  size(400, 400, P3D);
  
   
  
  pyramids = new Pyramid[81];
  
  
  //for(int i = 0; i < pyramids.length; i++) {
  //    pyramids[i] = new Pyramid();
      
  //    if(xPos < width) {
  //      pyramids[i].x = xPos;
  //      pyramids[i].y = yPos;
  //      xPos+=40;
  //    } else {
        
  //      yPos += 40;
  //      xPos = 0;
  //    }
      
      
  //}
  
  
  
  for (int i = 40; i<width; i=i+40) {

    translate(40, 0, 0);
    pushMatrix();
    
    for (int j = 40; j<height; j=j+40) {
      //x = (mouseX-i)*0.3;
      //y = (mouseY-j)*0.3;
      translate(0, 40, 0);
      
      pyramids[count] = new Pyramid();
    //pyramids[count].x = i;
      //pyramids[count].y = j;
      pyramids[count].pyPosX = i;
      pyramids[count].pyPosY = j;
      pyramids[count].display();
      //println(pyramids[count].pyPosX);
      if(count < pyramids.length -1 ) {
        count++;
      }
      
      
      
      //drawPyramid(20);
    }
    
    
    popMatrix();
  }
  

}

void draw() {
  //background(255);
  
  //println(pyramids.length);
  
  for(Pyramid pyramid: pyramids ) {
    //pyramid.display();

    float dist = dist(mouseX, mouseY, pyramid.pyPosX, pyramid.pyPosY);
    
    if(dist <= 40) {
        pyramid.touched = true;
    }
    
    pyramid.display();
  }

  
  
}

void drawPyramid(int t) { 

  println(x, y);
  stroke(0);
  int top = 30;
  // this pyramid has 4 sides, each drawn as a separate triangle
  // each side has 3 vertices, making up a triangle shape
  // the parameter " t " determines the size of the pyramid
  beginShape(TRIANGLES);

  fill(156, 237, 255);
  vertex(-t, -t, -t);
  vertex( t, -t, -t);
  vertex( x, y, top);

  fill(129, 198, 212);
  vertex( t, -t, -t);
  vertex( t, t, -t);
  vertex( x, y, top);

  fill(87, 135, 145);
  vertex( t, t, -t);
  vertex(-t, t, -t);
  vertex( x, y, top);

  fill(110, 173, 186);
  vertex(-t, t, -t);
  vertex(-t, -t, -t);
  vertex( x, y, top);

  endShape();
}
