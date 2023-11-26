class Knight
{//player class
  int x, y, dx;
  PImage knight;
  
  Knight (int x, int y)//constructor
  {
    this.x=x;
    this.y=y;
  }
  
   boolean crash(Attacker other){//collision detection
     return abs(this.x-other.x) < 40  &&  abs(this.y-other.y) < 40; //if Attacker is within 40 pixels of the knight, returns true
   }//abs func necessary for exact calculation

   
  void render(){//loads in image of knight and resizes
    knight = loadImage("knight.png");  
    knight.resize(50,50);
    imageMode(CENTER);//necessary for collision calc
    image(knight, x, y);
  }  
  
  void move(int dx){
    if (x<=width-25){//if player is at the end of screen
      dx=-dx;//reverse movement
    }
    if (x>=25){//if player at start of screen
      dx=-dx;//reverse movement
    }
    x+=dx;
  }
  
  void update(){//refactoring
    move(dx);
    render();
  }
}
Knight player1 = new Knight(400,50);//initialises knight object

void keyPressed()
{
   if (key==CODED) //if key pressed is coded
   {
     if (keyCode==RIGHT && player1.x>0)  //if key pressed was RIGHT and knight is not at the start of screen
     {
        player1.move(5);  //knight moves 5 pixels right
     }
     if (keyCode==LEFT && player1.x<width)  //if key pressed was LEFT and knight is not at the end of screen 
    {
      player1.move(-5);  //knight moves 5 pixels left
    }
  }
  if (key==ENTER){//if enter key is pressed
    rock = new Rock(player1.x,player1.y);//creates the rock variable at location of knight
  }
}
