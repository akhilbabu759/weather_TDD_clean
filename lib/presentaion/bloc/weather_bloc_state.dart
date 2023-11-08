part of 'weather_bloc_bloc.dart';

sealed class WeatherBlocState extends Equatable {
  const WeatherBlocState();
  
  @override
  List<Object> get props => [];
}

final class WeatherBlocEmpty extends WeatherBlocState {}
class WeatherLoading extends WeatherBlocState{}
class WeatherLoaded extends WeatherBlocState{
  final WeatherEntity result;

  const WeatherLoaded(this.result);
  @override
  List<Object> get props => [result];

  
}

class WeatherLoadFailure extends WeatherBlocState{
  final String message;

  const WeatherLoadFailure(this.message);
  @override
  List<Object> get props => [message];

  
}
