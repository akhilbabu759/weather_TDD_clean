import 'package:clean_weather/core/erro/failer.dart';
import 'package:clean_weather/domain/entities/weather.dart';
import 'package:clean_weather/domain/repositories/weather_repository.dart';
import 'package:dartz/dartz.dart';

class GetCurrentWeatherUsecase{
  final WeatherRepository weatherRepository;

  GetCurrentWeatherUsecase(this.weatherRepository);

  Future<Either<Failure,WeatherEntity>> execute( String cityName){
    return weatherRepository.getCurrentWeather(cityName);
  }
}