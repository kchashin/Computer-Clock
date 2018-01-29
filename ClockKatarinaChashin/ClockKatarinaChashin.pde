//Katarina Chashin

int cx, cy;
PImage img;

void setup() {
  size(1080, 1080);
 img = loadImage("clock.png"); //this image was drawn by me 
image(img, 0,0);
 cx = width / 2;
  cy = height / 2;
}

void draw() {
  image(img,0,0);//this piece of code makes it so that way the hands dont repeat continously
  
  //this part is to make the hands tick and change position, without it the clock hands wont move with the time.
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;
  float h = map(hour() % 12, 0, 12, 0, TWO_PI) - HALF_PI;
  
  stroke(#347235); //changes the stroke color to green to combine with the joker and harley combination
  //this section of code below, changes the length of the clock hands to fit inside the design
strokeWeight(1);
  line(cx, cy, cx + cos(s) * 390, cy + sin(s) * 390);
  strokeWeight(3);
  line(cx, cy, cx + cos(m) * 370, cy + sin(m) * 370);
  strokeWeight(6);
  line(cx, cy, cx + cos(h) * 260, cy + sin(h) * 260);
}