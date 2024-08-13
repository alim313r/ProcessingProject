float x, y;
Pyramid[] pyramids;
Pyramid p1;
Pyramid p2;
int count = 0;
int xPos = 40, yPos =40;
void setup() {
  size(800, 800, P3D);
      
  pyramids = new Pyramid[361];
    
  for(int i = 0; i < 361; i++) {
      pyramids[i] = new Pyramid();
      
      if(xPos < width) {
        pyramids[i].x = xPos;
        pyramids[i].y = yPos;
        xPos+=40;
      } else {
        yPos += 40;
        xPos = 40;
        pyramids[i].x = xPos;
        pyramids[i].y = yPos;
        xPos+=40;
      }
      
      pyramids[i].pyPosX = pyramids[i].x;
      pyramids[i].pyPosY = pyramids[i].y;
            
  }
  
  //p1 = new Pyramid();
  //p2 = new Pyramid();
  
  //p1.x = 200;
  //p1.y = 200;
  //p1.t = 50;
  //p2.x = 300;
  
  //p1.display();
  //p2.display();
  
  //for(Pyramid pyramid: pyramids) {
    
  //   pyramid.display();
  //}
}

void draw() {
  background(255);
  for(Pyramid pyramid: pyramids) {
    
     pyramid.display();
  }
  //println(pyramids.length);
  for(Pyramid pyramid: pyramids) {
    
    
    float dist = dist(mouseX, mouseY, pyramid.x, pyramid.y);
    if(dist < 30) {
      pyramid.touched = true;
      
      
    } 
    
    if(pyramid.touched) {    
      pyramid.display();
    }
  }
  

  
  
}
