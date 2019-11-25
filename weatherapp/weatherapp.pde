// Open Weather Map App
// Global Variables
String edmTemp, calgTemp, rdTemp, rdTempmin;

void setup() {
  quitButtonSetup();
  buildingURL();
  APICall();
  unwrapToVariables();
  size(500, 600); //Add Screen Size Checker
  // Add fullScreen() option, with Display Size Checker
  GUI_Setup();

  println("Start of Console");
  textSetup();

  textDraw(title, titleFont, height, #2C08FF, CENTER, CENTER, titleX, titleY, titleRectWidth, titleRectHeight); //Title
  textDraw(quit, titleFont, height, #2C08FF, CENTER, CENTER, quitx,quity,quitwidth,quitheight); //Quit Button
  //String strDate = Date.format(apiCurrentDateCall);
  SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy"); 
  formatter = new SimpleDateFormat("E, dd MMM yyyy HH:mm:ss z");  
  String strDate = formatter.format(apiCurrentDateCall);
  textDraw(strDate, titleFont, height, #2C08FF, LEFT, CENTER, currentapix,currentapiy,currentapiwidth,currentapiheight); //Time Stamp
  println("in");
  textDraw(nameEdm, titleFont, height, #2C08FF, LEFT, CENTER, ex,ey, ewidth,eheight); //Edmonton
  println(nameEdm);
  textDraw(nameCalg, titleFont, height, #2C08FF, LEFT, CENTER, cx,cy, cwidth,cheight); //Calgary
  textDraw(nameRD, titleFont, height, #2C08FF, LEFT, CENTER, vx,vy, vwidth,vheight);
  
  //Red Deer
}

void draw() {
  // City Call, see procedure using Boolean & Button
  // Choice of Three Cities: Edmonton, Calgary, Red Deer
}

void mousePressed() {
  APICall();
  unwrapToVariables();
  println(apiCurrentDateCall);
  // City Call, see procedure using Boolean & Button
  //
  
  if ( mouseX>ex && mouseX<ex+ewidth && mouseY>ey && mouseY<ey+eheight ) {
    edmTemp = String.valueOf(tempEdmonton);
    rect(tempx, tempy, tempwidth, tempheight);
    textDraw(edmTemp, titleFont, height, #2C08FF, CENTER, CENTER, tempx, tempy, tempwidth, tempheight); //Edmonton
    println(tempEdmonton, edmTemp);
  }
  //
  if (mouseX>cx && mouseX<cx+cwidth && mouseY>cy && mouseY<cy+cheight) {
    calgTemp = String.valueOf(tempCalgary);
    rect(tempx, tempy, tempwidth, tempheight);
    textDraw(calgTemp, titleFont, height, #2C08FF, CENTER, CENTER, tempx,tempy, tempwidth, tempheight); //Calgary
    println(tempCalgary, calgTemp);
  }
  //
  
  if (mouseX>vx && mouseX<vx+vwidth && mouseY>vy && mouseY<vy+vheight) {
    rdTemp = String.valueOf(tempRedDeer);
    rect(tempx, tempy, tempwidth, tempheight);
    textDraw(rdTemp, titleFont, height, #2C08FF, CENTER, CENTER, tempx, tempy, tempwidth, tempheight); //Calgary
    println(tempRedDeer, rdTemp);
  }
  
    if (mouseX>tminx && mouseX<tminx+tminwidth && mouseY>tminy && mouseY<tminy+tminheight) {
    rdTempmin = String.valueOf(tempMinRedDeer);
    rect(tempx, tempy, tempwidth, tempheight);
    textDraw(tempMinRedDeer, titleFont, height, #2C08FF, CENTER, CENTER, tminx, tminy, tminwidth, tminheight); //Calgary
    println(tempMinRedDeer, rdTempmin);
  }
  if(mousePressed){quitButtonDraw();}
  
  //
}

void keyPressed() {
}
void mouseClicked(){quitButtonMouseClicked();}
