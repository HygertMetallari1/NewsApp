part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initialState() = _IntialState;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.weatherLoaded({
    required List<WeatherItem> forecastingList
  })  = _WeatherLoaded;
  const factory WeatherState.weatherError({required String weatherError} ) = _WeatherError;
}