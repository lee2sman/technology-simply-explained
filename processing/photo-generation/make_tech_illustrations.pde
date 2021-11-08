//I increased Processing memory  up to 4GB (up from the default 500mb)
String[] subjects = {"bearings", "shaft", "cam", "bit", "head", "chuck", "bearing", "belt", "bucket", "camshaft", "carriage", "chamber", "claw", "clockwork", "cog", "collar", "combustion chamber", "component", "compression chamber", "connector", "controller", "crank", "cutout", "dial", "drum", "dynamo", "feed", "feeder", "flywheel", "gasket", "gear", "guard", "guts", "heat pump", "housing", "hydraulics", "inlet", "innards", "instrumentation", "intake", "jacket", "jaws", "linkup", "lock", "machinery", "mechanism", "module", "motor", "moving part", "part", "pedal", "photoelectric cell", "pinion", "piston", "plunger", "radiator", "ratchet", "regulator", "remote", "remote control", "reservoir", "roller", "seal", "shaft", "shovel", "skirt", "skirting", "sleeve", "spare", "spindle", "spare part", "sprocket", "stabilizer", "starter", "starter motor", "sump", "supercharger", "timer", "tooth", "treadle", "tripwire", "unit", "valve", "vane", "wheel", "workings"};
String allLetters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
char[] alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
PImage[] merzbau = new PImage[99];
PFont font;

void setup() {
  size(1500, 900); // 5 in wide x 3 in high, 300dpi

  for (int i = 0; i < merzbau.length; i++) {
    merzbau[i] = loadImage(i+".png");
  }

  font = loadFont("LikhanNormal-40.vlw");
  textFont(font, 40);

  imageMode(CENTER);
  //textFont("Georgia");
  textAlign(LEFT, BOTTOM);
  background(255);
 // screenprint();
}
void screenprint() {
  for (int i = 0; i < 4; i++) {
    pushMatrix();
    float w = random(width/3, 2*width);
    translate(random(width), random(height));
    scale(random(1, 3.3));
    rotate(radians(random(-25, 25)));
    image(merzbau[floor(random(merzbau.length))],0,0,w,w);
    popMatrix();
    filter(THRESHOLD);
    fill(255);
    rect(0, height-120, width/3, 120, 12);
    fill(0);
    text(subjects[floor(random(subjects.length))] + " " + alphabet[floor(random(alphabet.length))] + ".", 20, height-40);
  }
}

void draw() {
    screenprint();
   saveFrame("img/##.png");

  if (frameCount > 100){
     noLoop(); 
  }
}
void mousePressed() {
  screenprint();
}

void keyPressed() {
  if (key == 's') {
    save("image.png");
  }
}
