void setup(){
size(500,800);
frameRate(60);
background(0);
noStroke();
}

void draw(){
background(0);
rect();

}

void rect(){
  int x=mouseX;
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
quad(x-30,610,x+30,610,x+40,630,x-40,630);
//fill(#1CA9E8);

//Flashing lights inside the cockpit
int time = millis();
fill(random(0,255), random(0,255), random(0,255));
circle(x, 510, 50);
}
