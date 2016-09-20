float number=0.5;

void setup(){
  size(800, 800);
  
}

void draw(){
   background(255, 180, 180);
   stroke(mouseX,pmouseX,pmouseY);
   strokeWeight(5);
   if (number<5);
     number = number+0.5;
   rect(number,5,mouseX,mouseY);
}

void mousePressed(){
    stroke(10);
    fill(500);
    rectMode(CENTER);
    rect(pmouseX, mouseY, 100, 100);
}

void keyPressed(){
    background(225, 174, 376);
    fill(500);
    rectMode(CENTER);
    rect(pmouseX, mouseY, 100, 100);
  
}