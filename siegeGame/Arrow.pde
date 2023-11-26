class Arrow extends Attacker{//second Attacker class
  PImage arrow;
  
  Arrow(int x, int y){//constructor
    super(x,y);//subclass of Attacker class
  }
  
  void render(){
    arrow = loadImage("arrow.png");//image from paint
    arrow.resize(200,100);
    imageMode(CENTER);//for collision detection
    image(arrow,x,y);
  }
}
