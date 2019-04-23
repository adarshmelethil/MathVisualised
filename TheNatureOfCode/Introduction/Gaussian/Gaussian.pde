
import java.util.Random;

Random generator;
int binSize = 100;
int[] binValues;
float std = 1;
float mean = 0;
void setup() {
  size(500, 500);
  fill(0);
  
  generator = new Random();
  binValues = new int[binSize];
}

void draw(){
  background(255);
  
  step();
  render();
}

float min = 1000, max=-1000;
void step(){
  float rand = (float) generator.nextGaussian();
  rand = (rand * std) + mean;
  rand = constrain(rand, mean-3*std, mean+3*std);
  if (rand < min) min = rand;
  if (rand > max) max = rand;
  
  int index = round((rand + 3*std) * ((binSize-1)/(2*3*std)));
  binValues[index]++;
}

void render(){
  int rectangleWidth = width/binSize;
  for(int i = 0; i < binSize; i++){
    rect(rectangleWidth*i, height-binValues[i], rectangleWidth, binValues[i]);
  }
}
