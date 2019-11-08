//global variables
void setup(){
size (500,600);
buildingURL();
APICall();


JSONArray weather= jsonCurrentEdmonton.getJSONArray("weather");
JSONObject all= weather.getJSONObject(0);
String main = all.getString("main");
String description = all.getString("description");
String icon = all.getString("icon");
println(description);
println(main);
println(icon);

}

void draw(){
}

void mousePressed(){
}

void keyPressed(){
}
