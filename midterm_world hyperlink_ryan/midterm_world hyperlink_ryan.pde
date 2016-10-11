//world hyperlink, Ryan
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
  
  texts.add(new MyText(111,"Asia",          100,450,50,600,false,20,false));
  texts.add(new MyText(112,"Asia is Earth's largest and most populous continent, located \n"
                         +"primarily in the eastern and northern hemispheres and sharing\n"
                         +"the continental landmass of Eurasia with the continent of Europe.\n"
                         +"Asia covers an area of 44,579,000 square kilometers, about 30% \n"
                         +"of Earth's total land area and 8.7% of the Earth's total surface\n"
                         +" area. The continent, which has long been home to the majority\n"+" of the human.",
                         150,450,50,600,false,18,false));
  
  texts.add(new MyText(121,"Europe",        100,450,50,600,false,20,false));
  texts.add(new MyText(122,"Europe is Earth's largest and most populous continent, located \n"
                         +"primarily in the eastern and northern hemispheres and sharing\n"
                         +"the continental landmass of Eurasia with the continent of Europe.\n"
                         +"Asia covers an area of 44,579,000 square kilometers, about 30% \n"
                         +"of Earth's total land area and 8.7% of the Earth's total surface\n"
                         +" area. The continent, which has long been home to the majority\n"+" of the human.",
                         150,450,50,600,false,18,false));
  texts.add(new MyText(131,"North America",  100,450,50,600,false,20,false));
  texts.add(new MyText(132,"North America is Earth's largest and most populous continent, located \n"
                         +"primarily in the eastern and northern hemispheres and sharing\n"
                         +"the continental landmass of Eurasia with the continent of Europe.\n"
                         +"Asia covers an area of 44,579,000 square kilometers, about 30% \n"
                         +"of Earth's total land area and 8.7% of the Earth's total surface\n"
                         +" area. The continent, which has long been home to the majority\n"+" of the human.",
                         150,450,50,600,false,18,false));
  texts.add(new MyText(141,"South America",  100,450,50,600,false,20,false));
  texts.add(new MyText(142,"South America is Earth's largest and most populous continent, located \n"
                         +"primarily in the eastern and northern hemispheres and sharing\n"
                         +"the continental landmass of Eurasia with the continent of Europe.\n"
                         +"Asia covers an area of 44,579,000 square kilometers, about 30% \n"
                         +"of Earth's total land area and 8.7% of the Earth's total surface\n"
                         +" area. The continent, which has long been home to the majority\n"+" of the human.",
                         150,450,50,600,false,18,false));
  texts.add(new MyText(151,"Africa",         100,450,50,600,false,20,false));
  texts.add(new MyText(152,"Africa is Earth's largest and most populous continent, located \n"
                         +"primarily in the eastern and northern hemispheres and sharing\n"
                         +"the continental landmass of Eurasia with the continent of Europe.\n"
                         +"Asia covers an area of 44,579,000 square kilometers, about 30% \n"
                         +"of Earth's total land area and 8.7% of the Earth's total surface\n"
                         +" area. The continent, which has long been home to the majority\n"+" of the human.",
                         150,450,50,600,false,18,false));
  texts.add(new MyText(161,"Oceania",        100,450,50,600,false,20,false));
  texts.add(new MyText(162,"Oceania is Earth's largest and most populous continent, located \n"
                         +"primarily in the eastern and northern hemispheres and sharing\n"
                         +"the continental landmass of Eurasia with the continent of Europe.\n"
                         +"Asia covers an area of 44,579,000 square kilometers, about 30% \n"
                         +"of Earth's total land area and 8.7% of the Earth's total surface\n"
                         +" area. The continent, which has long been home to the majority\n"+" of the human.",
                         150,450,50,600,false,18,false));
  texts.add(new MyText(171,"Antarctica",     100,450,50,600,false,20,false));
  texts.add(new MyText(172,"Antarctica is Earth's largest and most populous continent, located \n"
                         +"primarily in the eastern and northern hemispheres and sharing\n"
                         +"the continental landmass of Eurasia with the continent of Europe.\n"
                         +"Asia covers an area of 44,579,000 square kilometers, about 30% \n"
                         +"of Earth's total land area and 8.7% of the Earth's total surface\n"
                         +" area. The continent, which has long been home to the majority\n"+" of the human.",
                         150,450,50,600,false,18,false));
  
  texts.add(new MyText(2,"Four Oceans",150,180,50,600));  
  
  texts.add(new MyText(21,"The Pacific Ocean", 100,130,50,600));
  texts.add(new MyText(22,"The Atlantic Ocean",150,180,50,600));
  texts.add(new MyText(23,"The Indian Ocean",  200,230,50,600));
  texts.add(new MyText(24,"The Arctic Ocean",  250,280,50,600));
  
  texts.add(new MyText(211,"The Pacific Ocean", 100,450,50,600,false,20,false));
  texts.add(new MyText(212,"The Pacific Ocean is the largest of the Earth's oceanic\n"
                         +"divisions. It extends from the Arctic Ocean in the north to \n"
                         +"the Southern Ocean (or, depending on definition, to\n"
                         +"Antarctica) in the south and is bounded by Asia and\n"
                         +"Australia in the west and the Americas in the east.\n",
                         150,450,50,600,false,18,false));
  texts.add(new MyText(221,"The Atlantic Ocean",100,450,50,600,false,20,false));
  texts.add(new MyText(222,"The Atlantic Ocean is the largest of the Earth's oceanic\n"
                         +"divisions. It extends from the Arctic Ocean in the north to \n"
                         +"the Southern Ocean (or, depending on definition, to\n"
                         +"Antarctica) in the south and is bounded by Asia and\n"
                         +"Australia in the west and the Americas in the east.\n",
                         150,450,50,600,false,18,false));
  texts.add(new MyText(231,"The Indian Ocean",  100,450,50,600,false,20,false));
  texts.add(new MyText(232,"The Indian Ocean is the largest of the Earth's oceanic\n"
                         +"divisions. It extends from the Arctic Ocean in the north to \n"
                         +"the Southern Ocean (or, depending on definition, to\n"
                         +"Antarctica) in the south and is bounded by Asia and\n"
                         +"Australia in the west and the Americas in the east.\n",
                         150,450,50,600,false,18,false));
  texts.add(new MyText(241,"The Arctic Ocean",  100,450,50,600,false,20,false));
  texts.add(new MyText(242,"The Arctic Ocean is the largest of the Earth's oceanic\n"
                         +"divisions. It extends from the Arctic Ocean in the north to \n"
                         +"the Southern Ocean (or, depending on definition, to\n"
                         +"Antarctica) in the south and is bounded by Asia and\n"
                         +"Australia in the west and the Americas in the east.\n",
                         150,450,50,600,false,18,false));
  
  
  texts.add(new MyText(10001,"Our World",50,80,50,600,false,24));
  texts.add(new MyText(20001,"Prev",50,80,540,600,false,14,color(255,0,0)));
 
}

void draw() {
  background(color(13,50,80));

  for(int i=0;i<texts.size();i++){
    MyText t=texts.get(i);
    if(t.num/10==curSelect)
      t.display();
     else if(t.num/10==1000)
      t.display();
     else if((t.num/10==2000)&&(curSelect>0))
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
    if(t.linkFlag)
    t.mousePressed();
  }
  
}


class MyText{
  boolean overButton=false;
  int num;
  String name;
  float posT,posB,posL,posR;
  boolean numFlag=true;
  int size=18;
  color c=color(random(256), random(256), random(256));
  boolean linkFlag=true;
  
  MyText(int n,String str,float t,float b,float l,float r){
    num=n;
    name=str;
    posT=t;
    posB=b;
    posL=l;
    posR=r;
  }
  MyText(int n,String str,float t,float b,float l,float r,boolean f,int s){
    num=n;
    name=str;
    posT=t;
    posB=b;
    posL=l;
    posR=r;
    numFlag=f;
    size=s;
  }
  MyText(int n,String str,float t,float b,float l,float r,boolean f,int s,color clr){
    num=n;
    name=str;
    posT=t;
    posB=b;
    posL=l;
    posR=r;
    numFlag=f;
    size=s;
    c=clr;
  }
  MyText(int n,String str,float t,float b,float l,float r,boolean f,int s,boolean link){
    num=n;
    name=str;
    posT=t;
    posB=b;
    posL=l;
    posR=r;
    numFlag=f;
    size=s;
    linkFlag=link;
  }
  
  void display(){
    textSize(size);

    if (overButton == true) {
      fill(color(255,0,0));
    } else {
      noFill();
      //fill(0);
      fill(c);
    }    
    
    //rect(posL-10,posT-22,posR-posL,posB-posT);
    if(name.length()<30)
      line(posL-10,posB-22,posR-10,posB-22);
    if(numFlag)
      text(num+".  "+name, posL, posT);
    else
      text(name, posL, posT);
    
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
      if(num/10==2000)
        curSelect=curSelect/10;
      else
        curSelect=num;
    }
  }
}