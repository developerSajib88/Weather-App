class ApiUrls{

  ///API Key
  static String apiKey = "1365a6be959c4efd8ae161513242412&";


  /// Development Base Url
  /// static String get baseUrl => "http://159.223.38.189:3333";

  /// Production Base Url
  static String get baseUrl => "  https://api.weatherapi.com";

  ///Api Urls
  static String get forecastUri => "$baseUrl/v1/forecast.json?key=$apiKey";

}