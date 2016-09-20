float number=0.5;

void setup(){
  size(800, 800);
  background(255, 180, 180);

  
}

void draw(){
   stroke(110, 180, 78);
   strokeWeight(20);
   arc(400, 100, 1000, 1000, 1, PI-QUARTER_PI, PIE);
   fill(230, 70, 41);
}

void mousePressed(){
   stroke(1);
   fill(5);
   rectMode(CENTER);
   rect(pmouseX, mouseY, 10, 10);
}



void keyPressed(){
    background(255, 180, 180);
     
}