class Urls{
  static const String baseUrl='https://api.openweathermap.org/data/2.5';
  static const String apiKey='915a0d0d92fa15b0743cb8e511787b89';
  static  String currentWeatherByname(String city)=>'$baseUrl/weather?q=$city&appid=$apiKey';
  static  String weatherIcon(String iconCode)=>'http://openweathermap.org/img/wn/$iconCode@2x.png';

}
