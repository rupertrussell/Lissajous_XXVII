// Created with "Processing":http://processing.org/
// Draws a Lissajous figures
// 4 April 2011
// "Examples":http://www.rupert.id.au/tutorials/processing/examples.php
// Artwork on Redbubble at:   https://www.redbubble.com/i/sticker/Lissajous-XXVII-by-rupertrussell/6973705.EJUG5?asc=u

int screen_width = 640;
int screen_height = 640;

/* Scale image and reduce by 5 pixels to remove from edge of screen */
int AX = (screen_width / 2) - 15;
int BX = (screen_height / 2) - 15;

float a = 5;
float b = 3;
float x1, y1, x2, y2;

int counter = 0;
int saveCounter = 0;
String file_name;
//
void setup(){
  smooth();
  fill(255);
  strokeWeight(1);   
  size(650, 650);
  background(0);
  }
//
void draw(){
  fill(255);
  stroke(255);
  //
  x1 = (sin(a * counter) * AX) + screen_width / 2;
  //
  y1 = (sin(b * counter) * BX) + screen_height / 2;
  //
  counter = counter + 1;
  //
  y2 = screen_width / 2;
  //
  x2 = screen_height / 2;
  //  
  line(x1,y1,x2,y2);
  ellipse((sin(a * counter) * AX) + screen_width / 2 , (sin(b * counter) * BX) + screen_height / 2, 5, 5);
  //  
  saveCounter = saveCounter + 1;
  if (saveCounter == 720) {
    String file_name = "Lissajous.png";
    save(file_name);
    noLoop();
    // exit();
  }
}
