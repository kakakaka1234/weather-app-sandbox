color darkblue = #7EC0F5;
color lightgreen = #08FC09;
color regularButton = darkblue;
color hoverOverButton = lightgreen;
String qu= "Quit";
void quitButtonSetup() {
  titleFont = createFont ("Harrington", 40); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}  

void quitButtonDraw() {
  println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  if (mouseX>width*9/10 && mouseX<width && mouseY>0 && mouseY<height*1/10) { //Hover Over
    fill(hoverOverButton);
    rect(width*9/10, height*0/16, width*1/10, height*1/10);
  } else {
    fill(regularButton);
    rect(width*9/10, height*0/16, width*1/10, height*1/10);
  }

  //Text in Quit Button
  fill(#2C08FF); //Purple Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(titleFont, 12); //Change the number until it fits, largest font size
  text(title, width*15/16, height*0/16, width*1/16, height*1/16);
  fill(255); //Reset to white for rest of the program
}

void quitButtonMouseClicked() {
  if (mouseX>width*15/16 && mouseX<width && mouseY>0 && mouseY<height*1/16) {
    exit();
  }
}
