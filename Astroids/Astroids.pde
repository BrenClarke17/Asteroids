boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship myShip;
ArrayList <GameObject> myObjects;


// mode Framework
int mode;
final int INTRO = 0;
final int GAME  =  1;
final int PAUSE =  2;
final int GAMEOVER = 3;

//font
PFont introfont;

void setup() {
 mode = INTRO;
  size(800, 600);
  introfont = createFont("04B_30__.TTF", 200);
  rectMode(CENTER);
  imageMode(CENTER);
  myShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip); 
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  rectMode(CENTER);
  upkey = downkey = leftkey = rightkey = spacekey = false;
}

void draw() {
// mode framework
if (mode == INTRO) {
  intro();
} else if (mode == GAME) {
game();
} else if (mode == PAUSE) {
pause();
} else if (mode == GAMEOVER) {
gameover();
} else {
  println("Erorror: Mode = " + mode);

}
  
  
}
