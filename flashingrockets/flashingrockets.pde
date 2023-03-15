int time = millis();
float r = 0,g=0,b=0;
void setup(){
size(500,800);
frameRate(60);
background(0);
noStroke();
}

void draw(){
  background(0);
  rect();
drawCircle(); 


}

void rect(){
  int x=mouseX;
  boolean isFlashing = false;
  
  if(isFlashing == false){
fill(255,0,0);
triangle(x,420,x-50,550,x+50,550);
triangle(x,420,x-30,460,x+30,460);
fill(200,100,0);
ellipse(x,600,50,130);
triangle(x,680,x+10,660,x-10,660);
fill(200);
rect(x-30,460,60,150);
ellipse(x-30,535,20,150);
ellipse(x+30,535,20,150);
fill(100);
quad(x-30,610,x+30,610,x+40,630,x-40,630); }
//fill(#1CA9E8);



}

void drawCircle(){
  
 //Flashing lights inside the cockpit
 
int countFrame = millis() - time; // calculates passed milliseconds
  if(countFrame >= 250){
      time = millis();
     // fill(r,g,b);  // if more than 215 milliseconds passed set fill color to red
     // isFlashing = true;
      r = random(0,255); g = random(0,255); b = random(0,255);
  }
  
 // fill(255);
 fill(r,g,b);
  circle(mouseX, 510, 50);
   
}
