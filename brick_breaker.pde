float x,y,dx,dy;
int c=0; 
boolean[][] bricks =new boolean [10][5]; 

void setup(){
  size(400,400);
  x=width/2;
  y=350;

}

void resetBall() {
  x = mouseX+38;
  y = 350;
  dx = random(-4,4);
  dy = random(-4,4);

  //function to reset the ball abouve the paddle
}

void draw(){
  background(0);
  fill(255);
  rect(mouseX,365,76,8);
  fill(255,0,0);
  ellipse(x,y,10,10);
   x=x+dx;
   y=y+dy;  
  if(x<=5||x>=395){
    dx=-dx;
  }
  if(y<=5){
    dy=-dy;
  }
  if((x>=mouseX&&x<=mouseX+76)&&y>=360)//checks when the ball falls
  {
    dy=-dy;
  }
  if(y>400)
  {
  x = mouseX+38;
  y = 350;
  dx=0;
  dy=0;
  c++;//keeps track of the lives
  }
  if(mousePressed)
  {
    dx=random(-4,4);
    dy=random(-4,4);
  }
  int k=3-c;
  if(k<0){
    c=0;   //resets the game after 3 attempts
  }
  fill(255);
  text("NO. OF LIVES REMAINING: " + k,100,300);//text for total lives remsining
  textSize(16);
  if(c==3)
  {
    fill(255,0,0);
    text("YOU'RE A DISAPPOINTMENT",110,230);//text displayed afer 3 attempts
    textSize(16); 
  }
  if(mousePressed)//resets the ball when the mouse is pressed
  {
  resetBall();
  }

  for(int i=0;i<10;i++)
  {
    for(int j=0;j<5;j++)
    { 
      int g=i*50;
      int h=j*20;
      if(g==0){
         fill(180,0,255);
      }
      else if(g==50){
        fill(0,234,255);
      }
      else if(g==100){
        fill(0,30,255);
      }
      else if(g==150){
        fill(54,255,0);
      }
      else if(g==200){
        fill(255,240,0);
      }
      else if(g==250){
        fill(255,0,0);
      }
      else if(g==300){
        fill(0,255,162);
      }
      else if(g==350){
        fill(252,0,255);
      }
      else if(g==400){
        fill(255,138,0);
      }
       rect(g,h,50,20);     //draw bricks
    }
  }
}
//