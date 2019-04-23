
class UniformRandomWalker {
  int x,y;
  
  UniformRandomWalker() {
    x = width/2;
    y = height/2;
  }
  
  void render() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    switch(int(random(4))) {
      case 0:
        x++;
        break;
      case 1:
        x--;
        break;
      case 2:
        y++;
        break;
      default:
        y--;
        break;
    }
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}

UniformRandomWalker w;

void setup() {
  size(500, 500);
  w = new UniformRandomWalker();
  background(255);
}

void draw() {
  w.step();
  w.render();
}
