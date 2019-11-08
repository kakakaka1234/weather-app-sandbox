
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









JSONArray weatherv= jsonCurrentVancouver.getJSONArray("weather");
JSONObject allv= weatherv.getJSONObject(0);
String mainweatherv = allv.getString("main");
String descriptionv = allv.getString("description");
String iconv = allv.getString("icon");

JSONObject mainv= jsonCurrentVancouver.getJSONObject("main");
float tempv= mainv.getFloat("temp");
float tempminv= mainv.getFloat("temp_min");
float tempmaxv= mainv.getFloat("temp_max");

JSONObject aliv= jsonCurrentVancouver.getJSONObject("sys");
String countryv= aliv.getString("country");
int sunrisev= aliv.getInt("sunrise");
int sunsetv= aliv.getInt("sunset");

JSONObject alav= jsonCurrentVancouver.getJSONObject("sys");

println(alav);
println(countryv);
println(sunrisev);
println(sunsetv);

println(descriptionv);
println(mainweatherv);
println(iconv);

println(tempv);
println(tempminv);
println(tempmaxv);

}
  
