// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'saved_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SavedNewsEventTearOff {
  const _$SavedNewsEventTearOff();

  _LoadSavedNews loadSavedNews() {
    return const _LoadSavedNews();
  }

  _SaveNews saveNews({required NewsItem news}) {
    return _SaveNews(
      news: news,
    );
  }

  _RemoveNews removeNews({required NewsItem news}) {
    return _RemoveNews(
      news: news,
    );
  }
}

/// @nodoc
const $SavedNewsEvent = _$SavedNewsEventTearOff();

/// @nodoc
mixin _$SavedNewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSavedNews,
    required TResult Function(NewsItem news) saveNews,
    required TResult Function(NewsItem news) removeNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSavedNews,
    TResult Function(NewsItem news)? saveNews,
    TResult Function(NewsItem news)? removeNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSavedNews,
    TResult Function(NewsItem news)? saveNews,
    TResult Function(NewsItem news)? removeNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSavedNews value) loadSavedNews,
    required TResult Function(_SaveNews value) saveNews,
    required TResult Function(_RemoveNews value) removeNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadSavedNews value)? loadSavedNews,
    TResult Function(_SaveNews value)? saveNews,
    TResult Function(_RemoveNews value)? removeNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSavedNews value)? loadSavedNews,
    TResult Function(_SaveNews value)? saveNews,
    TResult Function(_RemoveNews value)? removeNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedNewsEventCopyWith<$Res> {
  factory $SavedNewsEventCopyWith(
          SavedNewsEvent value, $Res Function(SavedNewsEvent) then) =
      _$SavedNewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedNewsEventCopyWithImpl<$Res>
    implements $SavedNewsEventCopyWith<$Res> {
  _$SavedNewsEventCopyWithImpl(this._value, this._then);

  final SavedNewsEvent _value;
  // ignore: unused_field
  final $Res Function(SavedNewsEvent) _then;
}

/// @nodoc
abstract class _$LoadSavedNewsCopyWith<$Res> {
  factory _$LoadSavedNewsCopyWith(
          _LoadSavedNews value, $Res Function(_LoadSavedNews) then) =
      __$LoadSavedNewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadSavedNewsCopyWithImpl<$Res>
    extends _$SavedNewsEventCopyWithImpl<$Res>
    implements _$LoadSavedNewsCopyWith<$Res> {
  __$LoadSavedNewsCopyWithImpl(
      _LoadSavedNews _value, $Res Function(_LoadSavedNews) _then)
      : super(_value, (v) => _then(v as _LoadSavedNews));

  @override
  _LoadSavedNews get _value => super._value as _LoadSavedNews;
}

/// @nodoc

class _$_LoadSavedNews implements _LoadSavedNews {
  const _$_LoadSavedNews();

  @override
  String toString() {
    return 'SavedNewsEvent.loadSavedNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadSavedNews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSavedNews,
    required TResult Function(NewsItem news) saveNews,
    required TResult Function(NewsItem news) removeNews,
  }) {
    return loadSavedNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSavedNews,
    TResult Function(NewsItem news)? saveNews,
    TResult Function(NewsItem news)? removeNews,
  }) {
    return loadSavedNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSavedNews,
    TResult Function(NewsItem news)? saveNews,
    TResult Function(NewsItem news)? removeNews,
    required TResult orElse(),
  }) {
    if (loadSavedNews != null) {
      return loadSavedNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSavedNews value) loadSavedNews,
    required TResult Function(_SaveNews value) saveNews,
    required TResult Function(_RemoveNews value) removeNews,
  }) {
    return loadSavedNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadSavedNews value)? loadSavedNews,
    TResult Function(_SaveNews value)? saveNews,
    TResult Function(_RemoveNews value)? removeNews,
  }) {
    return loadSavedNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSavedNews value)? loadSavedNews,
    TResult Function(_SaveNews value)? saveNews,
    TResult Function(_RemoveNews value)? removeNews,
    required TResult orElse(),
  }) {
    if (loadSavedNews != null) {
      return loadSavedNews(this);
    }
    return orElse();
  }
}

abstract class _LoadSavedNews implements SavedNewsEvent {
  const factory _LoadSavedNews() = _$_LoadSavedNews;
}

/// @nodoc
abstract class _$SaveNewsCopyWith<$Res> {
  factory _$SaveNewsCopyWith(_SaveNews value, $Res Function(_SaveNews) then) =
      __$SaveNewsCopyWithImpl<$Res>;
  $Res call({NewsItem news});

  $NewsItemCopyWith<$Res> get news;
}

/// @nodoc
class __$SaveNewsCopyWithImpl<$Res> extends _$SavedNewsEventCopyWithImpl<$Res>
    implements _$SaveNewsCopyWith<$Res> {
  __$SaveNewsCopyWithImpl(_SaveNews _value, $Res Function(_SaveNews) _then)
      : super(_value, (v) => _then(v as _SaveNews));

  @override
  _SaveNews get _value => super._value as _SaveNews;

  @override
  $Res call({
    Object? news = freezed,
  }) {
    return _then(_SaveNews(
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as NewsItem,
    ));
  }

  @override
  $NewsItemCopyWith<$Res> get news {
    return $NewsItemCopyWith<$Res>(_value.news, (value) {
      return _then(_value.copyWith(news: value));
    });
  }
}

/// @nodoc

class _$_SaveNews implements _SaveNews {
  const _$_SaveNews({required this.news});

  @override
  final NewsItem news;

  @override
  String toString() {
    return 'SavedNewsEvent.saveNews(news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveNews &&
            const DeepCollectionEquality().equals(other.news, news));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(news));

  @JsonKey(ignore: true)
  @override
  _$SaveNewsCopyWith<_SaveNews> get copyWith =>
      __$SaveNewsCopyWithImpl<_SaveNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSavedNews,
    required TResult Function(NewsItem news) saveNews,
    required TResult Function(NewsItem news) removeNews,
  }) {
    return saveNews(news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSavedNews,
    TResult Function(NewsItem news)? saveNews,
    TResult Function(NewsItem news)? removeNews,
  }) {
    return saveNews?.call(news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSavedNews,
    TResult Function(NewsItem news)? saveNews,
    TResult Function(NewsItem news)? removeNews,
    required TResult orElse(),
  }) {
    if (saveNews != null) {
      return saveNews(news);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSavedNews value) loadSavedNews,
    required TResult Function(_SaveNews value) saveNews,
    required TResult Function(_RemoveNews value) removeNews,
  }) {
    return saveNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadSavedNews value)? loadSavedNews,
    TResult Function(_SaveNews value)? saveNews,
    TResult Function(_RemoveNews value)? removeNews,
  }) {
    return saveNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSavedNews value)? loadSavedNews,
    TResult Function(_SaveNews value)? saveNews,
    TResult Function(_RemoveNews value)? removeNews,
    required TResult orElse(),
  }) {
    if (saveNews != null) {
      return saveNews(this);
    }
    return orElse();
  }
}

abstract class _SaveNews implements SavedNewsEvent {
  const factory _SaveNews({required NewsItem news}) = _$_SaveNews;

  NewsItem get news;
  @JsonKey(ignore: true)
  _$SaveNewsCopyWith<_SaveNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveNewsCopyWith<$Res> {
  factory _$RemoveNewsCopyWith(
          _RemoveNews value, $Res Function(_RemoveNews) then) =
      __$RemoveNewsCopyWithImpl<$Res>;
  $Res call({NewsItem news});

  $NewsItemCopyWith<$Res> get news;
}

/// @nodoc
class __$RemoveNewsCopyWithImpl<$Res> extends _$SavedNewsEventCopyWithImpl<$Res>
    implements _$RemoveNewsCopyWith<$Res> {
  __$RemoveNewsCopyWithImpl(
      _RemoveNews _value, $Res Function(_RemoveNews) _then)
      : super(_value, (v) => _then(v as _RemoveNews));

  @override
  _RemoveNews get _value => super._value as _RemoveNews;

  @override
  $Res call({
    Object? news = freezed,
  }) {
    return _then(_RemoveNews(
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as NewsItem,
    ));
  }

  @override
  $NewsItemCopyWith<$Res> get news {
    return $NewsItemCopyWith<$Res>(_value.news, (value) {
      return _then(_value.copyWith(news: value));
    });
  }
}

/// @nodoc

class _$_RemoveNews implements _RemoveNews {
  const _$_RemoveNews({required this.news});

  @override
  final NewsItem news;

  @override
  String toString() {
    return 'SavedNewsEvent.removeNews(news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveNews &&
            const DeepCollectionEquality().equals(other.news, news));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(news));

  @JsonKey(ignore: true)
  @override
  _$RemoveNewsCopyWith<_RemoveNews> get copyWith =>
      __$RemoveNewsCopyWithImpl<_RemoveNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSavedNews,
    required TResult Function(NewsItem news) saveNews,
    required TResult Function(NewsItem news) removeNews,
  }) {
    return removeNews(news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSavedNews,
    TResult Function(NewsItem news)? saveNews,
    TResult Function(NewsItem news)? removeNews,
  }) {
    return removeNews?.call(news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSavedNews,
    TResult Function(NewsItem news)? saveNews,
    TResult Function(NewsItem news)? removeNews,
    required TResult orElse(),
  }) {
    if (removeNews != null) {
      return removeNews(news);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSavedNews value) loadSavedNews,
    required TResult Function(_SaveNews value) saveNews,
    required TResult Function(_RemoveNews value) removeNews,
  }) {
    return removeNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadSavedNews value)? loadSavedNews,
    TResult Function(_SaveNews value)? saveNews,
    TResult Function(_RemoveNews value)? removeNews,
  }) {
    return removeNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSavedNews value)? loadSavedNews,
    TResult Function(_SaveNews value)? saveNews,
    TResult Function(_RemoveNews value)? removeNews,
    required TResult orElse(),
  }) {
    if (removeNews != null) {
      return removeNews(this);
    }
    return orElse();
  }
}

abstract class _RemoveNews implements SavedNewsEvent {
  const factory _RemoveNews({required NewsItem news}) = _$_RemoveNews;

  NewsItem get news;
  @JsonKey(ignore: true)
  _$RemoveNewsCopyWith<_RemoveNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SavedNewsStateTearOff {
  const _$SavedNewsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadingSavedNews loadingSavedNews() {
    return const _LoadingSavedNews();
  }

  _LoadedSavedNews loadedSavedNews(List<NewsItem> savedNews) {
    return _LoadedSavedNews(
      savedNews,
    );
  }

  _SavedNewsError savedNewsError(String error) {
    return _SavedNewsError(
      error,
    );
  }
}

/// @nodoc
const $SavedNewsState = _$SavedNewsStateTearOff();

/// @nodoc
mixin _$SavedNewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSavedNews,
    required TResult Function(List<NewsItem> savedNews) loadedSavedNews,
    required TResult Function(String error) savedNewsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSavedNews,
    TResult Function(List<NewsItem> savedNews)? loadedSavedNews,
    TResult Function(String error)? savedNewsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSavedNews,
    TResult Function(List<NewsItem> savedNews)? loadedSavedNews,
    TResult Function(String error)? savedNewsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingSavedNews value) loadingSavedNews,
    required TResult Function(_LoadedSavedNews value) loadedSavedNews,
    required TResult Function(_SavedNewsError value) savedNewsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSavedNews value)? loadingSavedNews,
    TResult Function(_LoadedSavedNews value)? loadedSavedNews,
    TResult Function(_SavedNewsError value)? savedNewsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSavedNews value)? loadingSavedNews,
    TResult Function(_LoadedSavedNews value)? loadedSavedNews,
    TResult Function(_SavedNewsError value)? savedNewsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedNewsStateCopyWith<$Res> {
  factory $SavedNewsStateCopyWith(
          SavedNewsState value, $Res Function(SavedNewsState) then) =
      _$SavedNewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedNewsStateCopyWithImpl<$Res>
    implements $SavedNewsStateCopyWith<$Res> {
  _$SavedNewsStateCopyWithImpl(this._value, this._then);

  final SavedNewsState _value;
  // ignore: unused_field
  final $Res Function(SavedNewsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SavedNewsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SavedNewsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSavedNews,
    required TResult Function(List<NewsItem> savedNews) loadedSavedNews,
    required TResult Function(String error) savedNewsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSavedNews,
    TResult Function(List<NewsItem> savedNews)? loadedSavedNews,
    TResult Function(String error)? savedNewsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSavedNews,
    TResult Function(List<NewsItem> savedNews)? loadedSavedNews,
    TResult Function(String error)? savedNewsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingSavedNews value) loadingSavedNews,
    required TResult Function(_LoadedSavedNews value) loadedSavedNews,
    required TResult Function(_SavedNewsError value) savedNewsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSavedNews value)? loadingSavedNews,
    TResult Function(_LoadedSavedNews value)? loadedSavedNews,
    TResult Function(_SavedNewsError value)? savedNewsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSavedNews value)? loadingSavedNews,
    TResult Function(_LoadedSavedNews value)? loadedSavedNews,
    TResult Function(_SavedNewsError value)? savedNewsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SavedNewsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingSavedNewsCopyWith<$Res> {
  factory _$LoadingSavedNewsCopyWith(
          _LoadingSavedNews value, $Res Function(_LoadingSavedNews) then) =
      __$LoadingSavedNewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingSavedNewsCopyWithImpl<$Res>
    extends _$SavedNewsStateCopyWithImpl<$Res>
    implements _$LoadingSavedNewsCopyWith<$Res> {
  __$LoadingSavedNewsCopyWithImpl(
      _LoadingSavedNews _value, $Res Function(_LoadingSavedNews) _then)
      : super(_value, (v) => _then(v as _LoadingSavedNews));

  @override
  _LoadingSavedNews get _value => super._value as _LoadingSavedNews;
}

/// @nodoc

class _$_LoadingSavedNews implements _LoadingSavedNews {
  const _$_LoadingSavedNews();

  @override
  String toString() {
    return 'SavedNewsState.loadingSavedNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingSavedNews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSavedNews,
    required TResult Function(List<NewsItem> savedNews) loadedSavedNews,
    required TResult Function(String error) savedNewsError,
  }) {
    return loadingSavedNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSavedNews,
    TResult Function(List<NewsItem> savedNews)? loadedSavedNews,
    TResult Function(String error)? savedNewsError,
  }) {
    return loadingSavedNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSavedNews,
    TResult Function(List<NewsItem> savedNews)? loadedSavedNews,
    TResult Function(String error)? savedNewsError,
    required TResult orElse(),
  }) {
    if (loadingSavedNews != null) {
      return loadingSavedNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingSavedNews value) loadingSavedNews,
    required TResult Function(_LoadedSavedNews value) loadedSavedNews,
    required TResult Function(_SavedNewsError value) savedNewsError,
  }) {
    return loadingSavedNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSavedNews value)? loadingSavedNews,
    TResult Function(_LoadedSavedNews value)? loadedSavedNews,
    TResult Function(_SavedNewsError value)? savedNewsError,
  }) {
    return loadingSavedNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSavedNews value)? loadingSavedNews,
    TResult Function(_LoadedSavedNews value)? loadedSavedNews,
    TResult Function(_SavedNewsError value)? savedNewsError,
    required TResult orElse(),
  }) {
    if (loadingSavedNews != null) {
      return loadingSavedNews(this);
    }
    return orElse();
  }
}

abstract class _LoadingSavedNews implements SavedNewsState {
  const factory _LoadingSavedNews() = _$_LoadingSavedNews;
}

/// @nodoc
abstract class _$LoadedSavedNewsCopyWith<$Res> {
  factory _$LoadedSavedNewsCopyWith(
          _LoadedSavedNews value, $Res Function(_LoadedSavedNews) then) =
      __$LoadedSavedNewsCopyWithImpl<$Res>;
  $Res call({List<NewsItem> savedNews});
}

/// @nodoc
class __$LoadedSavedNewsCopyWithImpl<$Res>
    extends _$SavedNewsStateCopyWithImpl<$Res>
    implements _$LoadedSavedNewsCopyWith<$Res> {
  __$LoadedSavedNewsCopyWithImpl(
      _LoadedSavedNews _value, $Res Function(_LoadedSavedNews) _then)
      : super(_value, (v) => _then(v as _LoadedSavedNews));

  @override
  _LoadedSavedNews get _value => super._value as _LoadedSavedNews;

  @override
  $Res call({
    Object? savedNews = freezed,
  }) {
    return _then(_LoadedSavedNews(
      savedNews == freezed
          ? _value.savedNews
          : savedNews // ignore: cast_nullable_to_non_nullable
              as List<NewsItem>,
    ));
  }
}

/// @nodoc

class _$_LoadedSavedNews implements _LoadedSavedNews {
  const _$_LoadedSavedNews(this.savedNews);

  @override
  final List<NewsItem> savedNews;

  @override
  String toString() {
    return 'SavedNewsState.loadedSavedNews(savedNews: $savedNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadedSavedNews &&
            const DeepCollectionEquality().equals(other.savedNews, savedNews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(savedNews));

  @JsonKey(ignore: true)
  @override
  _$LoadedSavedNewsCopyWith<_LoadedSavedNews> get copyWith =>
      __$LoadedSavedNewsCopyWithImpl<_LoadedSavedNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSavedNews,
    required TResult Function(List<NewsItem> savedNews) loadedSavedNews,
    required TResult Function(String error) savedNewsError,
  }) {
    return loadedSavedNews(savedNews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSavedNews,
    TResult Function(List<NewsItem> savedNews)? loadedSavedNews,
    TResult Function(String error)? savedNewsError,
  }) {
    return loadedSavedNews?.call(savedNews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSavedNews,
    TResult Function(List<NewsItem> savedNews)? loadedSavedNews,
    TResult Function(String error)? savedNewsError,
    required TResult orElse(),
  }) {
    if (loadedSavedNews != null) {
      return loadedSavedNews(savedNews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingSavedNews value) loadingSavedNews,
    required TResult Function(_LoadedSavedNews value) loadedSavedNews,
    required TResult Function(_SavedNewsError value) savedNewsError,
  }) {
    return loadedSavedNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSavedNews value)? loadingSavedNews,
    TResult Function(_LoadedSavedNews value)? loadedSavedNews,
    TResult Function(_SavedNewsError value)? savedNewsError,
  }) {
    return loadedSavedNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSavedNews value)? loadingSavedNews,
    TResult Function(_LoadedSavedNews value)? loadedSavedNews,
    TResult Function(_SavedNewsError value)? savedNewsError,
    required TResult orElse(),
  }) {
    if (loadedSavedNews != null) {
      return loadedSavedNews(this);
    }
    return orElse();
  }
}

abstract class _LoadedSavedNews implements SavedNewsState {
  const factory _LoadedSavedNews(List<NewsItem> savedNews) = _$_LoadedSavedNews;

  List<NewsItem> get savedNews;
  @JsonKey(ignore: true)
  _$LoadedSavedNewsCopyWith<_LoadedSavedNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedNewsErrorCopyWith<$Res> {
  factory _$SavedNewsErrorCopyWith(
          _SavedNewsError value, $Res Function(_SavedNewsError) then) =
      __$SavedNewsErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$SavedNewsErrorCopyWithImpl<$Res>
    extends _$SavedNewsStateCopyWithImpl<$Res>
    implements _$SavedNewsErrorCopyWith<$Res> {
  __$SavedNewsErrorCopyWithImpl(
      _SavedNewsError _value, $Res Function(_SavedNewsError) _then)
      : super(_value, (v) => _then(v as _SavedNewsError));

  @override
  _SavedNewsError get _value => super._value as _SavedNewsError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_SavedNewsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SavedNewsError implements _SavedNewsError {
  const _$_SavedNewsError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SavedNewsState.savedNewsError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SavedNewsError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$SavedNewsErrorCopyWith<_SavedNewsError> get copyWith =>
      __$SavedNewsErrorCopyWithImpl<_SavedNewsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSavedNews,
    required TResult Function(List<NewsItem> savedNews) loadedSavedNews,
    required TResult Function(String error) savedNewsError,
  }) {
    return savedNewsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSavedNews,
    TResult Function(List<NewsItem> savedNews)? loadedSavedNews,
    TResult Function(String error)? savedNewsError,
  }) {
    return savedNewsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSavedNews,
    TResult Function(List<NewsItem> savedNews)? loadedSavedNews,
    TResult Function(String error)? savedNewsError,
    required TResult orElse(),
  }) {
    if (savedNewsError != null) {
      return savedNewsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingSavedNews value) loadingSavedNews,
    required TResult Function(_LoadedSavedNews value) loadedSavedNews,
    required TResult Function(_SavedNewsError value) savedNewsError,
  }) {
    return savedNewsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSavedNews value)? loadingSavedNews,
    TResult Function(_LoadedSavedNews value)? loadedSavedNews,
    TResult Function(_SavedNewsError value)? savedNewsError,
  }) {
    return savedNewsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSavedNews value)? loadingSavedNews,
    TResult Function(_LoadedSavedNews value)? loadedSavedNews,
    TResult Function(_SavedNewsError value)? savedNewsError,
    required TResult orElse(),
  }) {
    if (savedNewsError != null) {
      return savedNewsError(this);
    }
    return orElse();
  }
}

abstract class _SavedNewsError implements SavedNewsState {
  const factory _SavedNewsError(String error) = _$_SavedNewsError;

  String get error;
  @JsonKey(ignore: true)
  _$SavedNewsErrorCopyWith<_SavedNewsError> get copyWith =>
      throw _privateConstructorUsedError;
}
