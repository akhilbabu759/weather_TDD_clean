import 'package:clean_weather/core/erro/failer.dart';
import 'package:clean_weather/domain/entities/weather.dart';
import 'package:dartz/dartz.dart';

abstract class WeatherRepository{

Future<Either<Failure,WeatherEntity>> getCurrentWeather(String cityName);

}