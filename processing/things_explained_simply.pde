String[] actions = {"Unseat", "Depress", "Extrude", "Push", "Extend", "Remove", "Lock", "Twist", "Unlock", "Lower", "Connect", "Stretch", "Unset", "Hyper-extend", "Pull", "Place", "Lift", "Punch", "Press", "Turn", "Force", "Free", "Fill", "Empty", "Shunt"};
String[] subjects = {"bearings", "shaft", "cam", "bit", "head", "chuck", "bearing", "belt", "bucket", "camshaft", "carriage", "chamber", "claw", "clockwork", "cog", "collar", "combustion chamber", "component", "compression chamber", "connector", "controller", "crank", "cutout",
  "dial", "drum", "dynamo", "feed", "feeder", "flywheel", "gasket", "gear", "guard", "guts", "heat pump", "housing", "hydraulics", "inlet", "innards", "instrumentation", "intake", "jacket", "jaws", "linkup", "lock", "machinery", "mechanism", "module", "motor", "moving part", "part", "pedal", "photoelectric cell", "pinion", "piston", "plunger", "radiator", "ratchet", "regulator", "remote", "remote control", "reservoir", "roller", "seal", "shaft", "shovel", "skirt", "skirting", "sleeve", "spare", "spindle", "spare part", "sprocket", "stabilizer", "starter", "starter motor", "sump", "supercharger", "timer", "tooth", "treadle", "tripwire", "unit", "valve", "vane", "wheel", "workings"};
String[] figures = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "t", "u", "v", "w", "x", "y", "z"};
PFont font;

void setup() {
  size(600, 400);
  textAlign(LEFT, TOP);

  rectMode(CENTER);

  font = loadFont("CenturySchL-Roma-24.vlw");
  textFont(font, 24);

  textSize(28);
}

void draw(){
  background(255);

  int linesCount = floor(random(1,4));
  for (int i = 0; i < linesCount; i++) {
    drawDiag();
  }

  addTitle();
  
  saveFrame("diagrams/diagram-###.png");

}

void mousePressed(){
  noLoop();
}

void drawDiag() {
  float x1 = random(width);
  float y1 = random(height);
  float x2 = random(width);
  float y2 = random(height);
  strokeWeight(random(20));
  line(x1, y1, x2, y2);

  fill(200);
  strokeWeight(2);
  float r = random(0, 30);
  float w = random(60, 100);
  rect(x1, y1, w, w, r);
  int word1 = floor(random(figures.length));
  int word2 = floor(random(figures.length));
  if (random(1)<0.5) {
    rect(x2, y2, w, w, r);
  } else {
    ellipse(x2, y2, w, w);
  }
  fill(30);
  text(figures[word1], x1-7, y1-10);
  text(figures[word2], x2-7, y2-10);
}
void addTitle() {
  rectMode(CORNER);

  noStroke();
  String instruction = actions[floor(random(actions.length))] + " " + subjects[floor(random(subjects.length))];
  int instructionW = instruction.length() * 18;
  
  int tx = 50;
  if (random(1) > 0.5) {
    tx = 270;
  }
  
  fill(240);
  rect(tx-10, 50, instructionW, 40);
  print(instruction.length());
  fill(20);
  text(instruction, tx, 50+10);
  stroke(2);
}
