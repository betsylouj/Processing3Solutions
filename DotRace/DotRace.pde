
//1. Make a variable to hold the X co-ordinate of the dot, and set it to something.
int x = 50;

void setup() {
  size(800, 200);
}

void draw() {
  //3. make it a nice color
 fill(220,50,100);
  //4. if the mouse is pressed...
  if(mousePressed){
    x+=200;   
  }
//5. ... change the X co-ordinate so that the dot moves to the right
      
  //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.
  ellipse(x,100,100,100);
//6. Make your dot move really fast so that it can win the race (you have to figure out what part of your code to change)

//7. Use this method to play a ding when your dot crosses the finish line. 
  if (x>=800){
    playSound();
  }

}

import processing.sound.*;
SoundFile file;
boolean soundPlayed = false;

void playSound() {
  if (!soundPlayed) {// Copyright Wintriss Technical Schools 2013
    file = new SoundFile(this, "ding.wav");
    file.play();
    soundPlayed = true;
  }
}

     