
// Window settings
int frame_rate = 60;
void setup(){
  size(500, 500);
  pixelDensity(displayDensity());
  // Sets color space to Hue Saturation Brightness with max values of HSB respectively
  colorMode(HSB, 255, 255, 255, 255);
  frameRate(frame_rate);
  
  background(255);
  noStroke();
  fill(255);
}

int box_size = 10;
float noise_inc = 0.1;

float noise_z = 0;
float noise_z_inc = 0.01;
int rand_seed = 0;
void draw(){
  background(255);
  //noiseSeed(rand_seed++);
  float noise_x = 0;
  
  for(int x = 0; x < width; x+=box_size) {
    float noise_y = 0;
    for(int y = 0; y < height; y+=box_size) {
      float alpha = 255;
      float val = map(noise(noise_x, noise_y, noise_z), 0, 1, 0, 255);
      fill(val, alpha);
      rect(x, y, box_size, box_size);
      
      //float val = map(noise(noise_x,noise_y, noise_z), 0, 1, 0, TWO_PI);
      //PVector vec = PVector.fromAngle(val);
      //stroke(0);
      //push();
      //translate(x, y);
      //rotate(vec.heading());
      //line(0,0,box_size,0);
      //pop();
      
      noise_y += noise_inc;
    }
    noise_x += noise_inc;
  }
  noise_z += noise_z_inc;
}
