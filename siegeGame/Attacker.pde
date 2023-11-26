abstract class Attacker{//super class
  int x,y,dy=-1;
  
  Attacker (int x, int y){//constructor
    this.x=x;
    this.y=y;
  }
  
  void move(){//defines movement for both classes
    y+=dy;
    if (y<=0){//if actor reaches the top goes, back to bottom of screen
      y=height;
    }
  }
  
  void update(){//refactoring
    move();
    render();
  }
  abstract void render();//needs render func to prevent error message
}
