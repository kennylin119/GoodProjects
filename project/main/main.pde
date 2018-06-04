Bricks[] brickArray = new Bricks[55];
Platform[] paddle = new Platform[1];
Ball[] playBall = new Ball[3]; // can hold multiple balls for powerups
int score = 0;

void setup() {
  size(840, 800);
  playBall[0] = new Ball();
  paddle[0] = new Platform(300, 780, 200, 10);
  createBricks();

}

void createBricks(){
  int x = 0;
  for (int i = 50; i < 760; i += 70) {
    for (int j = 100; j < 510; j += 100) {
      brickArray[x] = new Bricks(i, j, 40, 20);
      x += 1;
    }
  }
}

void draw(){
  background(0);
  for (Bricks b : brickArray){
    b.createBrick();
    if (ball.distance(b) <= 40 ){
      ifHit();
    }
  }
  paddle[0].movePlatform();
  playBall[0].move();
  //Display score at the top with an accessor to Bricks
}


 //if (brickArray[i].hp <= 0){  REMOVE BRICKS WHEN HEALTH IS 0
//  brickArray.remove(i);
//}