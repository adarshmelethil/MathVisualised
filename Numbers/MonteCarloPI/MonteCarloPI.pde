
int totalPoints = 0;
int withinCircle = 0;
void setup(){
  size(500, 500);
  
  textSize(24);
  stroke(0);
  square(width/20, width/20, width*18/20);
  circle(width/2, width/2, width*18/20);
}

void draw() {
  int randomX = int(random(width/20, width/20 + width*18/20));
  int randomY = int(random(width/20, width/20 + width*18/20));
  
  
  int distanceFromCenter = (int)Math.sqrt(
    Math.pow(width/2-randomX, 2) +
    Math.pow(width/2-randomY, 2)
   );
  
  if (distanceFromCenter < width/2-width/20) {
    stroke(255, 0, 0);
    withinCircle++;
  } else{
    stroke(0);
  }
  point(randomX, randomY);
  
  totalPoints++;
  noStroke();
  fill(255);
  rect(width/20, 0, width*18/20, width/20);
  fill(0);
  text("PI: " + 4*((float)withinCircle/(float)totalPoints), width/20, width/20);
}
