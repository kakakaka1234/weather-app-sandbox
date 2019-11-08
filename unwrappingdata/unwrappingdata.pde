//global variables
void setup(){
size (500,600);
buildingURL();
APICall();


JSONArray weather= jsonCurrentEdmonton.getJSONArray("weather");
JSONObject all= weather.getJSONObject(0);
String mainweather = all.getString("main");
String description = all.getString("description");
String icon = all.getString("icon");

JSONObject main= jsonCurrentEdmonton.getJSONObject("main");
float temp= main.getFloat("temp");
float tempmin= main.getFloat("temp_min");
float tempmax= main.getFloat("temp_max");

JSONObject ali= jsonCurrentEdmonton.getJSONObject("sys");
String country= ali.getString("country");
float sunrise= ali.getFloat("sunrise");
float sunset= ali.getFloat("sunset");

JSONObject ala= jsonCurrentEdmonton.getJSONObject("sys");
String name= ala.getString("name");
println(name);
println(country);
println(sunrise);
println(sunset);

println(description);
println(mainweather);
println(icon);

println(temp);
println(tempmin);
println(tempmax);

}

void draw(){
}

void mousePressed(){
}

void keyPressed(){
}
