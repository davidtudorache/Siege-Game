class Rock
{//object thrown class
  int x,y;
  PImage rock;
  
  Rock (int x, int y)//constructor
  {
    this.x=x;
    this.y=y;
  }
  
   boolean collision(Attacker other){//collision detection
     return abs(this.x-other.x) < 40  &&  abs(this.y-other.y) < 40;//if Attacker is within 40 pixels of the rock, returns true
   }//abs func necessary for exact calculation
  
  
  void render(){//load rock image and resizes
    rock = loadImage("rock_round.png");
    imageMode(CENTER);//for collsion calc
    image(rock,x,y);
  }
  void move(){//moves down
    y+=1;
  }
  
  void update(){
    move();
    render();
  }
}
Rock rock = new Rock(-20,-20);//intialises rock variable outside of screen
