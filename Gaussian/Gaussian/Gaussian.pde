import java.util.Random;


Random gen;
float stddev;
float mean;
void setup(){
  size(800, 800);
  background(255);
  gen = new Random();
  stddev = 100;
  mean = width/2;

}

void draw(){
  float xloc = (float)gen.nextGaussian();
  xloc *= stddev;
  xloc += mean;
  
  fill(0,10);
  noStroke();
  ellipse(xloc, height/2, 16,16);
}
