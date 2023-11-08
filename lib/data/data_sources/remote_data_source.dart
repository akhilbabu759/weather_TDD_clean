import 'dart:convert';

import 'package:clean_weather/core/constants/constant.dart';
import 'package:clean_weather/core/erro/exception.dart';
import 'package:clean_weather/core/erro/failer.dart';
import 'package:clean_weather/data/models/weather_model.dart';
import 'package:http/http.dart' as https;

abstract class WeatherRemoteDataSource{
  Future<WeatherModel> getCurrentWeather(String cityName);
}

class WeatherRemoteDataSourceImpl extends WeatherRemoteDataSource{
   https.Client clint;
   WeatherRemoteDataSourceImpl({required this.clint});
  @override
  Future<WeatherModel> getCurrentWeather(String cityName)async {
    final response= await clint.get(Uri.parse(Urls.currentWeatherByname(cityName)));
    if(response.statusCode==200){
      return WeatherModel.fromJson(json.decode(response.body));
    }else{
      throw ServerException();
    }
  }

}