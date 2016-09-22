void createBackground(){
   background(255, 180, 180);
   stroke(110, 180, 78);
   strokeWeight(20);
   fill(230, 70, 41);
   arc(400, 100, 1000, 1000, 1, PI-QUARTER_PI, PIE);
}

void setup(){
  size(800, 800);
  createBackground();
}

void draw(){
}

void mousePressed(){
   stroke(1);
   fill(5);
   rectMode(CENTER);
   rect(mouseX, mouseY, 5, 5);
}

void keyPressed(){
    createBackground();     
}