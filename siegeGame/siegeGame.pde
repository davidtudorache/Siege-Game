//Intialises variables
PImage castle,gameOver;
int newScore,gameMode =0;
Attacker[] attackers = new Attacker[6];

void setup(){  
  //create background and game over screen
  size(800,400);
  castle = loadImage("castle_backround.png");
  gameOver = loadImage("GAMEOVER.png");
  castle.resize(width,height); //set image to be same size as the canvas
  gameOver.resize(width,height); //set image to be same size as the canvas
  for (int i=0;i<3;i++){//creates new climbers and stores them in attacker array
    attackers[i] = new Climber((i+1)*120,400);
  }
  for (int i=3;i<6;i++){//creates new arrows and stores them in attacker array
    attackers[i] = new Arrow((i+1)*120,400);
  }
}

void draw(){
  //draws background and score
  background(castle);
  text("Score:"+newScore, 10, 10);
  if (gameMode == 0){//if player isn't dead, allow them to move and throw rock
    player1.update();
    rock.update();
    for (Attacker attacker : attackers) {//for every 'Attacker' in array 'attackers'
      attacker.update();
      if(player1.crash(attacker) == true){//if attacker collides into player
        gameMode = 1;//cahnge game state to over
      }
      if(rock.collision(attacker) == true){//if rock collides with attacker
        //rock and attacker removed from screen
        attacker.y=height+100;
        rock.x=-20;
        newScore +=10;//increases score
      }
    }
  }
  else{//otherwise change to game over screen
    background(gameOver);
  }
}
