// Open Weather Map App
// Global Variables
String edmTemp, calgTemp, rdTemp, edmTemp1, calgTemp1, rdTemp1, rdwt, edwt, cwt, desrd, desed, desc;

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
  textDraw(qu, titleFont, height, #2C08FF, CENTER, CENTER, quitx, quity, quitwidth, quitheight); //Quit Button
  //String strDate = Date.format(apiCurrentDateCall);
  SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy"); 
  formatter = new SimpleDateFormat("E, dd MMM yyyy HH:mm:ss z");  
  String strDate = formatter.format(apiCurrentDateCall);
  textDraw(strDate, titleFont, height, #2C08FF, LEFT, CENTER, currentapix, currentapiy, currentapiwidth, currentapiheight); //Time Stamp
  println("in");
  textDraw(nameEdm, titleFont, height, #2C08FF, LEFT, CENTER, ex, ey, ewidth, eheight); //Edmonton
  println(nameEdm);
  textDraw(nameCalg, titleFont, height, #2C08FF, LEFT, CENTER, cx, cy, cwidth, cheight); //Calgary
  textDraw(nameRD, titleFont, height, #2C08FF, LEFT, CENTER, vx, vy, vwidth, vheight);

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
    textDraw(calgTemp, titleFont, height, #2C08FF, CENTER, CENTER, tempx, tempy, tempwidth, tempheight); //Calgary
    println(tempCalgary, calgTemp);
  }
  //

  if (mouseX>vx && mouseX<vx+vwidth && mouseY>vy && mouseY<vy+vheight) {
    rdTemp = String.valueOf(tempRedDeer);
    rect(tempx, tempy, tempwidth, tempheight);
    textDraw(rdTemp, titleFont, height, #2C08FF, CENTER, CENTER, tempx, tempy, tempwidth, tempheight); //Calgary
    println(tempRedDeer, rdTemp);
  }

  if (mouseX>vx && mouseX<vx+vwidth && mouseY>vy && mouseY<vy+vheight) {
    rdTemp = String.valueOf(tempMinRedDeer);
    rect(tminx, tminy, tminwidth, tminheight);
    textDraw(rdTemp, titleFont, height, #2C08FF, CENTER, CENTER, tminx, tminy, tminwidth, tminheight); //Calgary
    println(tempMinRedDeer, rdTemp);
  }

  if (mouseX>cx && mouseX<cx+cwidth && mouseY>cy && mouseY<cy+cheight) {
    calgTemp = String.valueOf(tempMinCalgary);
    rect(tminx, tminy, tminwidth, tminheight);
    textDraw(calgTemp, titleFont, height, #2C08FF, CENTER, CENTER, tminx, tminy, tminwidth, tminheight); //Calgary
    println(tempMinCalgary, calgTemp);
  }
  if ( mouseX>ex && mouseX<ex+ewidth && mouseY>ey && mouseY<ey+eheight ) {
    edmTemp = String.valueOf(tempMinEdmonton);
    rect(tminx, tminy, tminwidth, tminheight);
    textDraw(edmTemp, titleFont, height, #2C08FF, CENTER, CENTER, tminx, tminy, tminwidth, tminheight); //Edmonton
    println(tempMinEdmonton, edmTemp);
  }



  if (mouseX>vx && mouseX<vx+vwidth && mouseY>vy && mouseY<vy+vheight) {
    rdTemp1 = String.valueOf(tempMaxRedDeer);
    rect(tmaxx, tmaxy, tmaxwidth, tmaxheight);
    textDraw(rdTemp1, titleFont, height, #2C08FF, CENTER, CENTER, tmaxx, tmaxy, tmaxwidth, tmaxheight); //Calgary
    println(tempMaxRedDeer, rdTemp1);
  }

  if (mouseX>cx && mouseX<cx+cwidth && mouseY>cy && mouseY<cy+cheight) {
    calgTemp1 = String.valueOf(tempMaxCalgary);
    rect(tmaxx, tmaxy, tmaxwidth, tmaxheight);
    textDraw(calgTemp1, titleFont, height, #2C08FF, CENTER, CENTER, tmaxx, tmaxy, tmaxwidth, tmaxheight); //Calgary
    println(tempMaxCalgary, calgTemp1);
  }
  if ( mouseX>ex && mouseX<ex+ewidth && mouseY>ey && mouseY<ey+eheight ) {
    edmTemp1 = String.valueOf(tempMaxEdmonton);
    rect(tmaxx, tmaxy, tmaxwidth, tmaxheight);
    textDraw(edmTemp1, titleFont, height, #2C08FF, CENTER, CENTER, tmaxx, tmaxy, tmaxwidth, tmaxheight); //Edmonton
    println(tempMaxEdmonton, edmTemp1);
  }

  if (mouseX>vx && mouseX<vx+vwidth && mouseY>vy && mouseY<vy+vheight) {
    rdwt = mainWeatherRedDeer;
    rect(wtx, wty, wtwidth, wtheight);
    println("1", rdwt);
    textDraw(rdwt, titleFont, height, #2C08FF, CENTER, CENTER, wtx, wty, wtwidth, wtheight); //Calgary
    println(mainWeatherRedDeer, rdwt);
  }
  if (mouseX>ex && mouseX<ex+ewidth && mouseY>ey && mouseY<ey+eheight) {
    edwt = String.valueOf(mainWeatherEdmonton);
    rect(wtx, wty, wtwidth, wtheight);
    textDraw(edwt, titleFont, height, #2C08FF, CENTER, CENTER, wtx, wty, wtwidth, wtheight); //Calgary
    println(mainWeatherEdmonton, edwt);
  }
  if (mouseX>cx && mouseX<cx+cwidth && mouseY>cy && mouseY<cy+cheight) {
    cwt = String.valueOf(mainWeatherCalgary);
    rect(wtx, wty, wtwidth, wtheight);
    textDraw(cwt, titleFont, height, #2C08FF, CENTER, CENTER, wtx, wty, wtwidth, wtheight); //Calgary
    println(mainWeatherCalgary, cwt);
  }

  //

  if (mouseX>vx && mouseX<vx+vwidth && mouseY>vy && mouseY<vy+vheight) {
    desrd = String.valueOf(descriptionRedDeer);
    rect(desx, desy, deswidth, desheight);
    textDraw(desrd, titleFont, height, #2C08FF, CENTER, CENTER, desx, desy, deswidth, desheight); //Calgary
    println(descriptionRedDeer, desrd);
  }
  if (mouseX>ex && mouseX<ex+ewidth && mouseY>ey && mouseY<ey+eheight) {
    desed = String.valueOf(descriptionEdmonton);
    rect(desx, desy, deswidth, desheight);
    textDraw(desed, titleFont, height, #2C08FF, CENTER, CENTER, desx, desy, deswidth, desheight); //Calgary
    println(descriptionEdmonton, desed);
  }
  if (mouseX>cx && mouseX<cx+cwidth && mouseY>cy && mouseY<cy+cheight) {
    desc = String.valueOf(descriptionCalgary);
    rect(desx, desy, deswidth, desheight);
    textDraw(desc, titleFont, height, #2C08FF, CENTER, CENTER, desx, desy, deswidth, desheight); //Calgary
    println(descriptionCalgary, desc);
  }



  if (mousePressed) {
    quitButtonDraw();
  }

  //
}

void keyPressed() {
}
void mouseClicked() {
  quitButtonMouseClicked();
}
