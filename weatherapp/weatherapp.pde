// open weather map app

void setup(){
buildingURL();
APICall();
unwrapToVariables();
size(500,600);
GUI_setup();}


void draw(){// city call, see procedure using boolean & button
//choice of three cities: Edmonton, Vancouver, Toronto
}
void mousePressed(){
APICall();
println(apiCurrentDateCall);
unwrapToVariables();}


void keyPressed(){}
