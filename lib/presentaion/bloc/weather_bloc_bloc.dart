import 'package:bloc/bloc.dart';
import 'package:clean_weather/domain/entities/weather.dart';
import 'package:clean_weather/domain/usecases/get_current_weather.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  final GetCurrentWeatherUsecase _getCurrentWeatherUsecase;
  WeatherBlocBloc(this._getCurrentWeatherUsecase) : super(WeatherBlocEmpty()) {
    on<OnCitychanged>((event, emit)async {
      emit(WeatherLoading());
      final result =await _getCurrentWeatherUsecase.execute(event.cityName);
      result.fold((faiure) {
        emit(WeatherLoadFailure(faiure.message));
      }, (data) {
        emit(WeatherLoaded(data));
      });
    },
    transformer: debounce(const Duration(milliseconds: 500))
    );
  }
}
 EventTransformer<T> debounce<T>(Duration duration){
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper) ;
 }
