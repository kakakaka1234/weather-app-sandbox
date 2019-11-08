
void unwrapToVariables(){JSONArray weather= jsonCurrentEdmonton.getJSONArray("weather");
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
int sunrise= ali.getInt("sunrise");
int sunset= ali.getInt("sunset");

JSONObject ala= jsonCurrentEdmonton.getJSONObject("sys");

println(ala);
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
  
