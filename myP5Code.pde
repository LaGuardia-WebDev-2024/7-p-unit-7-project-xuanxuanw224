//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
    frameRate (24)
}

//🎯Variable Declarations Go Here
var cat = 700
var catY = 200

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
//body
fill (0,0,0)
ellipse (cat+16,catY+150, 100,210)

//head
fill (0,0,0)
ellipse (cat,catY,100,100);
triangle (cat+10,catY-80, cat+20,catY-40, cat-30,catY-40);
ellipse (cat-27, catY+16,60,60);

//eye
fill (280,225,0)
triangle (cat-30,catY+10, cat-5,catY-6, cat-35,catY-6);

fill (360,360,360,90)
ellipse (cat,catY+200,180,560)

cat = cat - 4;
catY = catY + 1;


  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

if (cat < -150) {
  cat = 800
}
if (catY < 250) {
  catY = 150
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
