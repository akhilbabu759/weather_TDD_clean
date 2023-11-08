import 'package:clean_weather/data/data_sources/remote_data_source.dart';
import 'package:clean_weather/data/repositories/weather_repository_impl.dart';
import 'package:clean_weather/domain/repositories/weather_repository.dart';
import 'package:clean_weather/domain/usecases/get_current_weather.dart';
import 'package:clean_weather/presentaion/bloc/weather_bloc_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as https;

final locator = GetIt.instance;
void setUpLocator() {
  locator.registerFactory(() => WeatherBlocBloc(locator()));

  locator.registerLazySingleton(() => GetCurrentWeatherUsecase(locator()));

  locator.registerLazySingleton<WeatherRepository>(
      () => WeatherRepositoryImpl(weatheraRemoteDataSource: locator()));

  locator.registerLazySingleton<WeatherRemoteDataSource>(
      () => WeatherRemoteDataSourceImpl(clint: locator()));

  locator.registerLazySingleton(() => https.Client());
}
