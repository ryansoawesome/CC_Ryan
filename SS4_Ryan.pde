PFont f;


ArrayList<MyText> texts;
int curSelect=0;
  
void setup() {
  size(640, 480);
  
  f = createFont("Georgia.ttf", 24);
  textFont(f);
  
  //
  texts=new ArrayList<MyText>();
  texts.add(new MyText(1,"Seven Continents",100,130,50,600));
  
  texts.add(new MyText(11,"Asia",          100,130,50,600));
  texts.add(new MyText(12,"Europe",        150,180,50,600));
  texts.add(new MyText(13,"North America",  200,230,50,600));
  texts.add(new MyText(14,"South America",  250,280,50,600));
  texts.add(new MyText(15,"Africa",         300,330,50,600));
  texts.add(new MyText(16,"Oceania",        350,380,50,600));
  texts.add(new MyText(17,"Antarctica",     400,430,50,600));
  
  texts.add(new MyText(2,"Four Oceans",150,180,50,600));  
  
  texts.add(new MyText(21,"The Pacific Ocean", 100,130,50,600));
  texts.add(new MyText(22,"The Atlantic Ocean",150,180,50,600));
  texts.add(new MyText(23,"The Indian Ocean",  200,230,50,600));
  texts.add(new MyText(24,"The Arctic Ocean",  250,280,50,600));
 
}

void draw() {
  background(255);

  for(int i=0;i<texts.size();i++){
    MyText t=texts.get(i);
    if(t.num/10==curSelect)
      t.display();
  }
  
}

void mouseMoved(){
  
  for(int i=0;i<texts.size();i++){
    MyText t=texts.get(i);
    t.overButton=false;
  }
  for(int i=0;i<texts.size();i++){
    MyText t=texts.get(i);
    t.overButton=false;
    
    if(t.num/10==curSelect){
      if(t.checkButtons())
        break;
    }
    if(t.num/10==2000){
      if(t.checkButtons())
        break;
    }
  }
  
}

void mousePressed(){
  //
  for(int i=0;i<texts.size();i++){
    MyText t=texts.get(i);
    t.mousePressed();
  }
  
}


class MyText{
  boolean overButton=false;
  int num;
  String name;
  float posT,posB,posL,posR;
  
  MyText(int n,String str,float t,float b,float l,float r){
    num=n;
    name=str;
    posT=t;
    posB=b;
    posL=l;
    posR=r;
  }
  void display(){

    if (overButton == true) {
      fill(color(255,0,0));
    } else {
      noFill();
      fill(0);
    }    
    
    //rect(posL-10,posT-22,posR-posL,posB-posT);
    
      line(posL-10,posB-22,posR-10,posB-22);
    
      text(num+".  "+name, posL, posT);
    
  }
  boolean checkButtons(){    
    if (mouseX > posL-10 && mouseX < posR-10 && mouseY > posT-22 && mouseY <posB-22) {
      overButton = true;   
    } else {
      overButton = false;
    }
    return overButton;
  }
  void mousePressed(){
    if(overButton){
        curSelect=num;
    }
  }
}
