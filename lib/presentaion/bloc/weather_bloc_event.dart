part of 'weather_bloc_bloc.dart';

sealed class WeatherBlocEvent extends Equatable {
  const WeatherBlocEvent();

  @override
  List<Object> get props => [];
}
class OnCitychanged extends WeatherBlocEvent{
  final String cityName;
  const OnCitychanged(this.cityName);
  @override
   List<Object> get props => [cityName];
}
