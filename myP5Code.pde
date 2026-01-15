//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
    frameRate (24)
}

//🎯Variable Declarations Go Here
var cat = 800
var catY = 200
lightSize = 200
var x = 200
var y = 200

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);

//body
stroke (0.5)
fill (0,0,0)
ellipse (cat+16,catY+150, 100,210)

//head
fill (0,0,0)
ellipse (cat,catY,100,100);
triangle (cat+10,catY-80, cat+20,catY-40, cat-30,catY-40);
ellipse (cat-27, catY+16,60,60);

//eye
fill (280,225,0)
triangle (cat-30,catY+15, cat-5,catY-6, cat-35,catY-6);

//whiskers
fill (0,0,360)
  stroke('magenta');
  strokeWeight(3);

line (cat-25,catY+20,cat+10,catY+5)
line (cat-25,catY+30,cat+13,catY+25)

//ghosty
fill (360,360,360,90)
ellipse (cat,catY+200,180,560)

//light 
fill (0,0,0,90)
rect (0,0,1000,700)
 stroke(280,225,0,0);
strokeWeight (1);
fill (280,225,0,30)
filter(blur, 50)

ellipse (x,y,200,200)

cat = cat - 5;
catY = catY + 1;

x=mouseX;
y=mouseY;

  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

if (cat < -150) {
  cat = 800
}
if (catY > 170) {
  catY = 140
}


}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
