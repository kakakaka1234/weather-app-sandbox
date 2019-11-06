//edmonton: 5946768
// vancouver: 6173331
//calgary: 5913490
String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
String baseURL=  "http://api.openweathermap.org/data/2.5/forecast?";
String edmontonId ="id=5946768";
String calgaryId ="id=5913490";
String vancouverId="id=6173331";
String apiKey="APPID=30f2f1fd002dc783703636d607cd4077";
String mode= "mode=json";
String unitMetric="units=metric";
String and ="&";



String URLCurrentEdmonton= baseURL_Current + edmontonId + and +apiKey+ and+ mode +and+ unitMetric;
String URLForecastEdmonton=baseURL + edmontonId + and +apiKey+ and+ mode +and+ unitMetric;
String URLCurrentCalgary=baseURL_Current + calgaryId + and +apiKey+ and+ mode +and+ unitMetric;
String URLForecastCalgary=baseURL + calgaryId + and +apiKey+ and+ mode +and+ unitMetric;
String URLCurrentVancouver=baseURL_Current + vancouverId + and +apiKey+ and+ mode +and+ unitMetric;
String URLForecastVancouver=baseURL + vancouverId + and +apiKey+ and+ mode +and+ unitMetric;


println(URLCurrentEdmonton);
