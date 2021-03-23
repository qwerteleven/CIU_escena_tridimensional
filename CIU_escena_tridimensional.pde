import queasycam.*;
import gifAnimation.*;
GifMaker gifExport;
int frames = 0;
int totalFrames = 120;
PImage neutron, electron, proton;
QueasyCam cam;
float fov = PI/3.0;
float cameraZ = (height/2.0) / tan(fov/2.0);
PShape neutron_, electron_, proton_;
PShape[] particle = new PShape[3];

void setup(){
  smooth();
  //gifExport = new GifMaker(this, "animation.gif", 100);
  //gifExport.setRepeat(0); 
  neutron = loadImage("./neutron.jpg");
  electron = loadImage("./electron.jpg");
  proton = loadImage("./proton.jpg");
  
  PImage[] textures = {neutron, electron, proton};
  neutron_ = createShape(SPHERE, 20); 
  electron_ = createShape(SPHERE, 10); 
  proton_ = createShape(SPHERE, 20); 
  
  particle[0] = neutron_;
  particle[1] = electron_;
  particle[2] = proton_;
  particle[0].setStroke(false);
  particle[1].setStroke(false);
  particle[2].setStroke(false);
  particle[0].setTexture(textures[0]);
  particle[1].setTexture(textures[1]);
  particle[2].setTexture(textures[2]);
  noStroke();
  
  size(1000, 1000, P3D);
  cam = new QueasyCam(this);
  cam.speed = 5;              // default is 3
  cam.sensitivity = 0.5;      // default is 2
  perspective(fov, float(width)/float(height), cameraZ/1000.0, cameraZ*1000.0);
}

void draw(){
  background(0);
  ambientLight(202, 202, 202);
  for(int i = 0; i < 700; i+=100) {
    directionalLight(i, 656, 9, 0, 0, -1);
    for(int j = 0; j < 700; j+=100){
      for(int k = 0; k < 700; k+=100){
        pushMatrix();
        translate(i, j, k);
        shape(particle[((k % 3 + i) % 3 + j) % 3]);
        popMatrix();
      }
    }
  }
  
  stroke(255,0,0);
  textSize(40);
  scale(-1, 1);
  text("Red Cristalina  Indice de Miller (1 0 0)", -80, -20, -20);
  translate(-200, -200, -200);
  
  //export();
}


void export() {
  if(frames < totalFrames) {
    gifExport.setDelay(20);
    gifExport.addFrame();
    frames++;
  } else {
    gifExport.finish();
    frames++;
    println("gif saved");
    exit();
  }
}
