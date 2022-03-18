// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherEventTearOff {
  const _$WeatherEventTearOff();

  _AppStarted appStarted() {
    return const _AppStarted();
  }
}

/// @nodoc
const $WeatherEvent = _$WeatherEventTearOff();

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStarted value) appStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStarted value)? appStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStarted value)? appStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;
}

/// @nodoc
abstract class _$AppStartedCopyWith<$Res> {
  factory _$AppStartedCopyWith(
          _AppStarted value, $Res Function(_AppStarted) then) =
      __$AppStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppStartedCopyWithImpl<$Res> extends _$WeatherEventCopyWithImpl<$Res>
    implements _$AppStartedCopyWith<$Res> {
  __$AppStartedCopyWithImpl(
      _AppStarted _value, $Res Function(_AppStarted) _then)
      : super(_value, (v) => _then(v as _AppStarted));

  @override
  _AppStarted get _value => super._value as _AppStarted;
}

/// @nodoc

class _$_AppStarted implements _AppStarted {
  const _$_AppStarted();

  @override
  String toString() {
    return 'WeatherEvent.appStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStarted value) appStarted,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStarted value)? appStarted,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStarted value)? appStarted,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class _AppStarted implements WeatherEvent {
  const factory _AppStarted() = _$_AppStarted;
}

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _IntialState initialState() {
    return const _IntialState();
  }

  _Loading loading() {
    return const _Loading();
  }

  _WeatherLoaded weatherLoaded({required List<WeatherItem> forecastingList}) {
    return _WeatherLoaded(
      forecastingList: forecastingList,
    );
  }

  _WeatherError weatherError({required String weatherError}) {
    return _WeatherError(
      weatherError: weatherError,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<WeatherItem> forecastingList) weatherLoaded,
    required TResult Function(String weatherError) weatherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<WeatherItem> forecastingList)? weatherLoaded,
    TResult Function(String weatherError)? weatherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<WeatherItem> forecastingList)? weatherLoaded,
    TResult Function(String weatherError)? weatherError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntialState value) initialState,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WeatherLoaded value) weatherLoaded,
    required TResult Function(_WeatherError value) weatherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IntialState value)? initialState,
    TResult Function(_Loading value)? loading,
    TResult Function(_WeatherLoaded value)? weatherLoaded,
    TResult Function(_WeatherError value)? weatherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntialState value)? initialState,
    TResult Function(_Loading value)? loading,
    TResult Function(_WeatherLoaded value)? weatherLoaded,
    TResult Function(_WeatherError value)? weatherError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;
}

/// @nodoc
abstract class _$IntialStateCopyWith<$Res> {
  factory _$IntialStateCopyWith(
          _IntialState value, $Res Function(_IntialState) then) =
      __$IntialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$IntialStateCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$IntialStateCopyWith<$Res> {
  __$IntialStateCopyWithImpl(
      _IntialState _value, $Res Function(_IntialState) _then)
      : super(_value, (v) => _then(v as _IntialState));

  @override
  _IntialState get _value => super._value as _IntialState;
}

/// @nodoc

class _$_IntialState implements _IntialState {
  const _$_IntialState();

  @override
  String toString() {
    return 'WeatherState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _IntialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<WeatherItem> forecastingList) weatherLoaded,
    required TResult Function(String weatherError) weatherError,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<WeatherItem> forecastingList)? weatherLoaded,
    TResult Function(String weatherError)? weatherError,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<WeatherItem> forecastingList)? weatherLoaded,
    TResult Function(String weatherError)? weatherError,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntialState value) initialState,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WeatherLoaded value) weatherLoaded,
    required TResult Function(_WeatherError value) weatherError,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IntialState value)? initialState,
    TResult Function(_Loading value)? loading,
    TResult Function(_WeatherLoaded value)? weatherLoaded,
    TResult Function(_WeatherError value)? weatherError,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntialState value)? initialState,
    TResult Function(_Loading value)? loading,
    TResult Function(_WeatherLoaded value)? weatherLoaded,
    TResult Function(_WeatherError value)? weatherError,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _IntialState implements WeatherState {
  const factory _IntialState() = _$_IntialState;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<WeatherItem> forecastingList) weatherLoaded,
    required TResult Function(String weatherError) weatherError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<WeatherItem> forecastingList)? weatherLoaded,
    TResult Function(String weatherError)? weatherError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<WeatherItem> forecastingList)? weatherLoaded,
    TResult Function(String weatherError)? weatherError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntialState value) initialState,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WeatherLoaded value) weatherLoaded,
    required TResult Function(_WeatherError value) weatherError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IntialState value)? initialState,
    TResult Function(_Loading value)? loading,
    TResult Function(_WeatherLoaded value)? weatherLoaded,
    TResult Function(_WeatherError value)? weatherError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntialState value)? initialState,
    TResult Function(_Loading value)? loading,
    TResult Function(_WeatherLoaded value)? weatherLoaded,
    TResult Function(_WeatherError value)? weatherError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WeatherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$WeatherLoadedCopyWith<$Res> {
  factory _$WeatherLoadedCopyWith(
          _WeatherLoaded value, $Res Function(_WeatherLoaded) then) =
      __$WeatherLoadedCopyWithImpl<$Res>;
  $Res call({List<WeatherItem> forecastingList});
}

/// @nodoc
class __$WeatherLoadedCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherLoadedCopyWith<$Res> {
  __$WeatherLoadedCopyWithImpl(
      _WeatherLoaded _value, $Res Function(_WeatherLoaded) _then)
      : super(_value, (v) => _then(v as _WeatherLoaded));

  @override
  _WeatherLoaded get _value => super._value as _WeatherLoaded;

  @override
  $Res call({
    Object? forecastingList = freezed,
  }) {
    return _then(_WeatherLoaded(
      forecastingList: forecastingList == freezed
          ? _value.forecastingList
          : forecastingList // ignore: cast_nullable_to_non_nullable
              as List<WeatherItem>,
    ));
  }
}

/// @nodoc

class _$_WeatherLoaded implements _WeatherLoaded {
  const _$_WeatherLoaded({required this.forecastingList});

  @override
  final List<WeatherItem> forecastingList;

  @override
  String toString() {
    return 'WeatherState.weatherLoaded(forecastingList: $forecastingList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherLoaded &&
            const DeepCollectionEquality()
                .equals(other.forecastingList, forecastingList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(forecastingList));

  @JsonKey(ignore: true)
  @override
  _$WeatherLoadedCopyWith<_WeatherLoaded> get copyWith =>
      __$WeatherLoadedCopyWithImpl<_WeatherLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<WeatherItem> forecastingList) weatherLoaded,
    required TResult Function(String weatherError) weatherError,
  }) {
    return weatherLoaded(forecastingList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<WeatherItem> forecastingList)? weatherLoaded,
    TResult Function(String weatherError)? weatherError,
  }) {
    return weatherLoaded?.call(forecastingList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<WeatherItem> forecastingList)? weatherLoaded,
    TResult Function(String weatherError)? weatherError,
    required TResult orElse(),
  }) {
    if (weatherLoaded != null) {
      return weatherLoaded(forecastingList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntialState value) initialState,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WeatherLoaded value) weatherLoaded,
    required TResult Function(_WeatherError value) weatherError,
  }) {
    return weatherLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IntialState value)? initialState,
    TResult Function(_Loading value)? loading,
    TResult Function(_WeatherLoaded value)? weatherLoaded,
    TResult Function(_WeatherError value)? weatherError,
  }) {
    return weatherLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntialState value)? initialState,
    TResult Function(_Loading value)? loading,
    TResult Function(_WeatherLoaded value)? weatherLoaded,
    TResult Function(_WeatherError value)? weatherError,
    required TResult orElse(),
  }) {
    if (weatherLoaded != null) {
      return weatherLoaded(this);
    }
    return orElse();
  }
}

abstract class _WeatherLoaded implements WeatherState {
  const factory _WeatherLoaded({required List<WeatherItem> forecastingList}) =
      _$_WeatherLoaded;

  List<WeatherItem> get forecastingList;
  @JsonKey(ignore: true)
  _$WeatherLoadedCopyWith<_WeatherLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeatherErrorCopyWith<$Res> {
  factory _$WeatherErrorCopyWith(
          _WeatherError value, $Res Function(_WeatherError) then) =
      __$WeatherErrorCopyWithImpl<$Res>;
  $Res call({String weatherError});
}

/// @nodoc
class __$WeatherErrorCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherErrorCopyWith<$Res> {
  __$WeatherErrorCopyWithImpl(
      _WeatherError _value, $Res Function(_WeatherError) _then)
      : super(_value, (v) => _then(v as _WeatherError));

  @override
  _WeatherError get _value => super._value as _WeatherError;

  @override
  $Res call({
    Object? weatherError = freezed,
  }) {
    return _then(_WeatherError(
      weatherError: weatherError == freezed
          ? _value.weatherError
          : weatherError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherError implements _WeatherError {
  const _$_WeatherError({required this.weatherError});

  @override
  final String weatherError;

  @override
  String toString() {
    return 'WeatherState.weatherError(weatherError: $weatherError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherError &&
            const DeepCollectionEquality()
                .equals(other.weatherError, weatherError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(weatherError));

  @JsonKey(ignore: true)
  @override
  _$WeatherErrorCopyWith<_WeatherError> get copyWith =>
      __$WeatherErrorCopyWithImpl<_WeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<WeatherItem> forecastingList) weatherLoaded,
    required TResult Function(String weatherError) weatherError,
  }) {
    return weatherError(this.weatherError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<WeatherItem> forecastingList)? weatherLoaded,
    TResult Function(String weatherError)? weatherError,
  }) {
    return weatherError?.call(this.weatherError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<WeatherItem> forecastingList)? weatherLoaded,
    TResult Function(String weatherError)? weatherError,
    required TResult orElse(),
  }) {
    if (weatherError != null) {
      return weatherError(this.weatherError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntialState value) initialState,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WeatherLoaded value) weatherLoaded,
    required TResult Function(_WeatherError value) weatherError,
  }) {
    return weatherError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IntialState value)? initialState,
    TResult Function(_Loading value)? loading,
    TResult Function(_WeatherLoaded value)? weatherLoaded,
    TResult Function(_WeatherError value)? weatherError,
  }) {
    return weatherError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntialState value)? initialState,
    TResult Function(_Loading value)? loading,
    TResult Function(_WeatherLoaded value)? weatherLoaded,
    TResult Function(_WeatherError value)? weatherError,
    required TResult orElse(),
  }) {
    if (weatherError != null) {
      return weatherError(this);
    }
    return orElse();
  }
}

abstract class _WeatherError implements WeatherState {
  const factory _WeatherError({required String weatherError}) = _$_WeatherError;

  String get weatherError;
  @JsonKey(ignore: true)
  _$WeatherErrorCopyWith<_WeatherError> get copyWith =>
      throw _privateConstructorUsedError;
}
