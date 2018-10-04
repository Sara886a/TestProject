  //setting uf variables for button
int buttonX = 200;
int buttonY = 600;
int buttonXa = 400;
int buttonYa = 600;
//setting up glow
float alpha = 255;
float pulse = 1.12;
int buttonSize = 100;
float glowSize = 150;
float glowVary = 0.1;
//boleans for actions
boolean full;
boolean click;
boolean clicka;
//info boxes setup
int boxX = 350;
int boxY = 150;
int boxW = 400;
int boxH = 250;
int boxA = 0;
int boxB = 0;
//closing bokes after set time
int counter = 0;
int closeTime = 10;  //the time in seconds

void GlowingButton1 () {
//the glow effect
noStroke();
fill (0,170,255,alpha);
 ellipse (buttonX,buttonY,glowSize,glowSize); 
 // setting up the pulsing
 if (alpha >= 255){
  full = true; 
 }
 else if (alpha <= 5) {
  full = false; 
 } 
 // getting it to pulsate
 if (full == true) {
  alpha -= pulse; 
  glowSize -= glowVary;

 }
 else {
  alpha += pulse; 
  glowSize +=glowVary;
 }
 //the button icon
 fill(200,100,0);
 ellipse (buttonX,buttonY,buttonSize,buttonSize);
}


void GlowingButton2 () {
//the glow effect
noStroke();
fill (0,170,255,alpha);
 ellipse (buttonXa,buttonYa,glowSize,glowSize); 
 // setting up the pulsing
 if (alpha >= 255){
  full = true; 
 }
 else if (alpha <= 5) {
  full = false; 
 }
 // getting it to pulsate
 if (full == true) {
  alpha -= pulse; 
  glowSize -=glowVary;
 }
 else {
  alpha += pulse; 
  glowSize +=glowVary;
 }
 //the button icon
 fill(200,100,0);
 ellipse (buttonXa,buttonYa,buttonSize,buttonSize);
}


void InfoScreen1 () {
  //dispaying screen on click
  if (click == true){
    fill (255,0,200,boxA);
    boxA = 255;
   rect(boxX,boxY,boxW,boxH); 
  }
  else {
   boxA = 0;
  }
}


void InfoScreen2 () {
  //dispaying screen on click
  if (clicka == true){
    fill (150,0,255,boxB);
    boxB = 255;
   rect(boxX,boxY,boxW,boxH); 
  }
  else {
   boxB = 0;
  }
}

void ClosingTime () {
  counter +=1;
  int minutes = counter/60;
  if (minutes >= closeTime) {
  click = false;
  clicka = false;
  }
}


void setup () {
 size (1189,841); 
}


void draw () {
  background (#888888);
GlowingButton1 ();
GlowingButton2();
ClosingTime();
InfoScreen1();
InfoScreen2();
}


//registering weather a button gets clicked
void mouseClicked () {
  //clicking a button1
 if ((dist(mouseX,mouseY,buttonX,buttonY)) <= buttonSize/2){
   click = true;
 }
 else {
  click = false; 
 }
 
 //clicking button2
  if ((dist(mouseX,mouseY,buttonXa,buttonYa)) <= buttonSize/2){
   clicka = true;
 }
 else {
  clicka = false; 
 }
 counter = 0;
}
