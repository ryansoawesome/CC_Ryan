float r = 255;
float g = 255;
float b = 255;
float c = 200;

void setup(){
  size(800,800);
  fill(0);
}

void draw(){
  
  if( mouseX<width/2 && mouseY<height/2){
    background(255, 180, 180);
  }
  else if (mouseX>width/2 && mouseY<height/2){
    background(87,197,245);
  }
  else if (mouseX<width/2 && mouseY>height/2){
    background(72,41,120);
  }
  else if (mouseX>width/2 && mouseY>height/2){
    background(146,167,2);
  }
  
  
  //circles
  for (int a = 0; a < 1000; a = a + 100){
    for (int b = 0; b < 1000; b = b + 100){
      fill(r,g,b);
      stroke(r,g,b);
      rect(a, b, 50, 50);
    }
  } 
}

void mousePressed(){
  r = random(0,254);
  g = random(0,254);
  b = random(0,254);
}

void mouseMoved(){
  r = r+5;
  g = g+5;
  b = b+5;
  if (r>254){
    r=0;
  }
  if (g>254){
    r=0;
  }
  if (b>254){
    r=0;
  }
    
}