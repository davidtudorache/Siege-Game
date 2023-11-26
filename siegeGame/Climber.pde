class Climber extends Attacker{//first Attacker class
  PImage climber1,climber2,climber3;
  //counter variables to manage looping of animation
  int counter=0;
  int countDir=1;
  
  Climber(int x, int y){//constructor
    super(x,y);//subclass of Attacker class
  }
  
  void render(){//loads in images and resizes them
    climber1 = loadImage("climber1.png");
    climber2 = loadImage("climber2.png");
    climber3 = loadImage("climber3.png");
    climber1.resize(50,50);
    climber2.resize(50,50);
    climber3.resize(50,50);
    //cycles through 3 different images, frame rate controlled by counter
    if (counter >= 0 && counter <=10){//if counter is between 0-10, image 1 loaded
      image(climber1,x,y);
    }
    else if (counter >= 10 && counter <=20){//if counter is between 10-20, image 2 loaded
      image(climber2,x,y);
    }
    else if (counter >= 20 && counter <=30){//if counter is between 20-30, image 3 loaded
      image(climber3,x,y);
    }
    else{//if all images have been cycled through, differential counter variable is inversed
      countDir=-countDir;
    }
    counter+=countDir; //counter is increased by differential amount
  }
}
