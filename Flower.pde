//Chi Khoa Martin Nguyen - bouncing flower

float r=60;
float ballX = width/2;
float ballY = height/2;
float ballXF;//Variables used in the for loop. They were needed because before ballX got defined in the loop
             //which meant it couldn't update per frame. By using these two variables, ballX and ballY can
             //freely move position.
float ballYF;
float ballSpeedX = 10;
float ballSpeedY = ballSpeedX;

void setup() {
  size(600,400);
}

void draw(){
  background(#43AF76);
  fill(#FFA005);
  for (float i=0;i<PI*2;i+=2*PI/5) {
  ballXF=ballX + r*cos(i);
  ballYF=ballY + r*sin(i);
  ellipse(ballXF,ballYF,r,r);
  }
  fill(20,0,100);
  ellipse(ballX,ballY,r*1.2,r*1.2);
  update();
  boundry();
}  
/*
Moves the ball on both X and Y axis
*/
void update(){
  ballX = ballX + ballSpeedX;
  ballY = ballY + ballSpeedY;
}

//Inverts the direction of the flower, by inverting the speed if the position of the flower
//reaches end of width or height, or reaches 0 of width or height
void boundry(){
  if (ballX > width ||ballX <= 0 ){
        ballSpeedX *=-1;
      }
      if (ballY > height|| ballY <= 0){
        ballSpeedY *=-1;
      }
}
