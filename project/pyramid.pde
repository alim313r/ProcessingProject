class Pyramid {
  int t = 20, x, y, top = 30, pyPosX, pyPosY;
  boolean touched = false;
 

  void display () {
    
 
    
  
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
  
  if(touched) {
    fill(255, 0,0);
  }
  endShape();
  }
}
