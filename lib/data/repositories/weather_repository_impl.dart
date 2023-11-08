import 'dart:io';

import 'package:clean_weather/core/erro/exception.dart';
import 'package:clean_weather/core/erro/failer.dart';
import 'package:clean_weather/data/data_sources/remote_data_source.dart';
import 'package:clean_weather/domain/entities/weather.dart';
import 'package:clean_weather/domain/repositories/weather_repository.dart';
import 'package:dartz/dartz.dart';

class WeatherRepositoryImpl extends WeatherRepository{
  final WeatherRemoteDataSource weatheraRemoteDataSource;
  WeatherRepositoryImpl({required this.weatheraRemoteDataSource});

  @override
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String cityName) async{
    try{
      final result = await weatheraRemoteDataSource.getCurrentWeather(cityName);
      return Right(result);
    } on ServerException{
      return const Left(ServerFailer('An error has occurred'));
    }on SocketException{
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

}