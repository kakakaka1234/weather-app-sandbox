//global variables
String baseURL_Current;
String baseURL;
String edmontonId;
String calgaryId;
String vancouverId;
String apiKey;
String mode;
String unitMetric;
String and;
String URLCurrentEdmonton;
String URLForecastEdmonton;
String URLCurrentCalgary;
String URLForecastCalgary;
String URLCurrentVancouver;
String URLForecastVancouver;
JSONObject jsonCurrentEdmonton;
JSONObject jsonForecastEdmonton;
JSONObject jsonCurrentCalgary;
JSONObject jsonForecastCalgary;
JSONObject jsonCurrentVancouver;
JSONObject jsonForecastVancouver;
void buildingURL (){
  //edmonton: 5946768
// vancouver: 6173331
//calgary: 5913490
baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
baseURL=  "http://api.openweathermap.org/data/2.5/forecast?";
edmontonId ="id=5946768";
 calgaryId ="id=5913490";
vancouverId="id=6173331";
apiKey="APPID=30f2f1fd002dc783703636d607cd4077";
mode= "mode=json";
unitMetric="units=metric";
and ="&";



 URLCurrentEdmonton= baseURL_Current + edmontonId + and +apiKey+ and+ mode +and+ unitMetric;
URLForecastEdmonton=baseURL + edmontonId + and +apiKey+ and+ mode +and+ unitMetric;
 URLCurrentCalgary=baseURL_Current + calgaryId + and +apiKey+ and+ mode +and+ unitMetric;
 URLForecastCalgary=baseURL + calgaryId + and +apiKey+ and+ mode +and+ unitMetric;
URLCurrentVancouver=baseURL_Current + vancouverId + and +apiKey+ and+ mode +and+ unitMetric;
 URLForecastVancouver=baseURL + vancouverId + and +apiKey+ and+ mode +and+ unitMetric;


println(URLCurrentEdmonton);
//println(URLForecastEdmonton);
//println(URLCurrentCalgary);
//println(URLForecastCalgary);
//println(URLCurrentVancouver);
//println(URLForecastVancouver);
}
void APICall(){
 jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton);
 jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);
jsonCurrentCalgary = loadJSONObject(URLCurrentCalgary);
jsonForecastCalgary = loadJSONObject(URLForecastCalgary);
 jsonCurrentVancouver = loadJSONObject(URLCurrentVancouver);
 jsonForecastVancouver = loadJSONObject(URLForecastVancouver);
}
  
  
  
//end building url
