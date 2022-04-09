// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'culture_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CultureTabEventTearOff {
  const _$CultureTabEventTearOff();

  _LoadNews loadNews({String? chosenSection}) {
    return _LoadNews(
      chosenSection: chosenSection,
    );
  }

  _LoadNextPage loadNextPage() {
    return const _LoadNextPage();
  }
}

/// @nodoc
const $CultureTabEvent = _$CultureTabEventTearOff();

/// @nodoc
mixin _$CultureTabEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? chosenSection) loadNews,
    required TResult Function() loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? chosenSection)? loadNews,
    TResult Function()? loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? chosenSection)? loadNews,
    TResult Function()? loadNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNews value) loadNews,
    required TResult Function(_LoadNextPage value) loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadNews value)? loadNews,
    TResult Function(_LoadNextPage value)? loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNews value)? loadNews,
    TResult Function(_LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CultureTabEventCopyWith<$Res> {
  factory $CultureTabEventCopyWith(
          CultureTabEvent value, $Res Function(CultureTabEvent) then) =
      _$CultureTabEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CultureTabEventCopyWithImpl<$Res>
    implements $CultureTabEventCopyWith<$Res> {
  _$CultureTabEventCopyWithImpl(this._value, this._then);

  final CultureTabEvent _value;
  // ignore: unused_field
  final $Res Function(CultureTabEvent) _then;
}

/// @nodoc
abstract class _$LoadNewsCopyWith<$Res> {
  factory _$LoadNewsCopyWith(_LoadNews value, $Res Function(_LoadNews) then) =
      __$LoadNewsCopyWithImpl<$Res>;
  $Res call({String? chosenSection});
}

/// @nodoc
class __$LoadNewsCopyWithImpl<$Res> extends _$CultureTabEventCopyWithImpl<$Res>
    implements _$LoadNewsCopyWith<$Res> {
  __$LoadNewsCopyWithImpl(_LoadNews _value, $Res Function(_LoadNews) _then)
      : super(_value, (v) => _then(v as _LoadNews));

  @override
  _LoadNews get _value => super._value as _LoadNews;

  @override
  $Res call({
    Object? chosenSection = freezed,
  }) {
    return _then(_LoadNews(
      chosenSection: chosenSection == freezed
          ? _value.chosenSection
          : chosenSection // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoadNews implements _LoadNews {
  const _$_LoadNews({this.chosenSection});

  @override
  final String? chosenSection;

  @override
  String toString() {
    return 'CultureTabEvent.loadNews(chosenSection: $chosenSection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadNews &&
            const DeepCollectionEquality()
                .equals(other.chosenSection, chosenSection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(chosenSection));

  @JsonKey(ignore: true)
  @override
  _$LoadNewsCopyWith<_LoadNews> get copyWith =>
      __$LoadNewsCopyWithImpl<_LoadNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? chosenSection) loadNews,
    required TResult Function() loadNextPage,
  }) {
    return loadNews(chosenSection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? chosenSection)? loadNews,
    TResult Function()? loadNextPage,
  }) {
    return loadNews?.call(chosenSection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? chosenSection)? loadNews,
    TResult Function()? loadNextPage,
    required TResult orElse(),
  }) {
    if (loadNews != null) {
      return loadNews(chosenSection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNews value) loadNews,
    required TResult Function(_LoadNextPage value) loadNextPage,
  }) {
    return loadNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadNews value)? loadNews,
    TResult Function(_LoadNextPage value)? loadNextPage,
  }) {
    return loadNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNews value)? loadNews,
    TResult Function(_LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) {
    if (loadNews != null) {
      return loadNews(this);
    }
    return orElse();
  }
}

abstract class _LoadNews implements CultureTabEvent {
  const factory _LoadNews({String? chosenSection}) = _$_LoadNews;

  String? get chosenSection;
  @JsonKey(ignore: true)
  _$LoadNewsCopyWith<_LoadNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadNextPageCopyWith<$Res> {
  factory _$LoadNextPageCopyWith(
          _LoadNextPage value, $Res Function(_LoadNextPage) then) =
      __$LoadNextPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadNextPageCopyWithImpl<$Res>
    extends _$CultureTabEventCopyWithImpl<$Res>
    implements _$LoadNextPageCopyWith<$Res> {
  __$LoadNextPageCopyWithImpl(
      _LoadNextPage _value, $Res Function(_LoadNextPage) _then)
      : super(_value, (v) => _then(v as _LoadNextPage));

  @override
  _LoadNextPage get _value => super._value as _LoadNextPage;
}

/// @nodoc

class _$_LoadNextPage implements _LoadNextPage {
  const _$_LoadNextPage();

  @override
  String toString() {
    return 'CultureTabEvent.loadNextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadNextPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? chosenSection) loadNews,
    required TResult Function() loadNextPage,
  }) {
    return loadNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? chosenSection)? loadNews,
    TResult Function()? loadNextPage,
  }) {
    return loadNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? chosenSection)? loadNews,
    TResult Function()? loadNextPage,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNews value) loadNews,
    required TResult Function(_LoadNextPage value) loadNextPage,
  }) {
    return loadNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadNews value)? loadNews,
    TResult Function(_LoadNextPage value)? loadNextPage,
  }) {
    return loadNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNews value)? loadNews,
    TResult Function(_LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(this);
    }
    return orElse();
  }
}

abstract class _LoadNextPage implements CultureTabEvent {
  const factory _LoadNextPage() = _$_LoadNextPage;
}

/// @nodoc
class _$CultureTabStateTearOff {
  const _$CultureTabStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadingNews loadingNews() {
    return const _LoadingNews();
  }

  _LoadedNews loadedNews(List<NewsItem> news, bool isTheEndOfList) {
    return _LoadedNews(
      news,
      isTheEndOfList,
    );
  }

  _NewsError newsError(String error) {
    return _NewsError(
      error,
    );
  }

  _ResetList resetList() {
    return const _ResetList();
  }
}

/// @nodoc
const $CultureTabState = _$CultureTabStateTearOff();

/// @nodoc
mixin _$CultureTabState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNews,
    required TResult Function(List<NewsItem> news, bool isTheEndOfList)
        loadedNews,
    required TResult Function(String error) newsError,
    required TResult Function() resetList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNews value) loadingNews,
    required TResult Function(_LoadedNews value) loadedNews,
    required TResult Function(_NewsError value) newsError,
    required TResult Function(_ResetList value) resetList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNews value)? loadingNews,
    TResult Function(_LoadedNews value)? loadedNews,
    TResult Function(_NewsError value)? newsError,
    TResult Function(_ResetList value)? resetList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNews value)? loadingNews,
    TResult Function(_LoadedNews value)? loadedNews,
    TResult Function(_NewsError value)? newsError,
    TResult Function(_ResetList value)? resetList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CultureTabStateCopyWith<$Res> {
  factory $CultureTabStateCopyWith(
          CultureTabState value, $Res Function(CultureTabState) then) =
      _$CultureTabStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CultureTabStateCopyWithImpl<$Res>
    implements $CultureTabStateCopyWith<$Res> {
  _$CultureTabStateCopyWithImpl(this._value, this._then);

  final CultureTabState _value;
  // ignore: unused_field
  final $Res Function(CultureTabState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CultureTabStateCopyWithImpl<$Res>
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
    return 'CultureTabState.initial()';
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
    required TResult Function() loadingNews,
    required TResult Function(List<NewsItem> news, bool isTheEndOfList)
        loadedNews,
    required TResult Function(String error) newsError,
    required TResult Function() resetList,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
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
    required TResult Function(_LoadingNews value) loadingNews,
    required TResult Function(_LoadedNews value) loadedNews,
    required TResult Function(_NewsError value) newsError,
    required TResult Function(_ResetList value) resetList,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNews value)? loadingNews,
    TResult Function(_LoadedNews value)? loadedNews,
    TResult Function(_NewsError value)? newsError,
    TResult Function(_ResetList value)? resetList,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNews value)? loadingNews,
    TResult Function(_LoadedNews value)? loadedNews,
    TResult Function(_NewsError value)? newsError,
    TResult Function(_ResetList value)? resetList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CultureTabState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingNewsCopyWith<$Res> {
  factory _$LoadingNewsCopyWith(
          _LoadingNews value, $Res Function(_LoadingNews) then) =
      __$LoadingNewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingNewsCopyWithImpl<$Res>
    extends _$CultureTabStateCopyWithImpl<$Res>
    implements _$LoadingNewsCopyWith<$Res> {
  __$LoadingNewsCopyWithImpl(
      _LoadingNews _value, $Res Function(_LoadingNews) _then)
      : super(_value, (v) => _then(v as _LoadingNews));

  @override
  _LoadingNews get _value => super._value as _LoadingNews;
}

/// @nodoc

class _$_LoadingNews implements _LoadingNews {
  const _$_LoadingNews();

  @override
  String toString() {
    return 'CultureTabState.loadingNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingNews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNews,
    required TResult Function(List<NewsItem> news, bool isTheEndOfList)
        loadedNews,
    required TResult Function(String error) newsError,
    required TResult Function() resetList,
  }) {
    return loadingNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
  }) {
    return loadingNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
    required TResult orElse(),
  }) {
    if (loadingNews != null) {
      return loadingNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNews value) loadingNews,
    required TResult Function(_LoadedNews value) loadedNews,
    required TResult Function(_NewsError value) newsError,
    required TResult Function(_ResetList value) resetList,
  }) {
    return loadingNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNews value)? loadingNews,
    TResult Function(_LoadedNews value)? loadedNews,
    TResult Function(_NewsError value)? newsError,
    TResult Function(_ResetList value)? resetList,
  }) {
    return loadingNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNews value)? loadingNews,
    TResult Function(_LoadedNews value)? loadedNews,
    TResult Function(_NewsError value)? newsError,
    TResult Function(_ResetList value)? resetList,
    required TResult orElse(),
  }) {
    if (loadingNews != null) {
      return loadingNews(this);
    }
    return orElse();
  }
}

abstract class _LoadingNews implements CultureTabState {
  const factory _LoadingNews() = _$_LoadingNews;
}

/// @nodoc
abstract class _$LoadedNewsCopyWith<$Res> {
  factory _$LoadedNewsCopyWith(
          _LoadedNews value, $Res Function(_LoadedNews) then) =
      __$LoadedNewsCopyWithImpl<$Res>;
  $Res call({List<NewsItem> news, bool isTheEndOfList});
}

/// @nodoc
class __$LoadedNewsCopyWithImpl<$Res>
    extends _$CultureTabStateCopyWithImpl<$Res>
    implements _$LoadedNewsCopyWith<$Res> {
  __$LoadedNewsCopyWithImpl(
      _LoadedNews _value, $Res Function(_LoadedNews) _then)
      : super(_value, (v) => _then(v as _LoadedNews));

  @override
  _LoadedNews get _value => super._value as _LoadedNews;

  @override
  $Res call({
    Object? news = freezed,
    Object? isTheEndOfList = freezed,
  }) {
    return _then(_LoadedNews(
      news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsItem>,
      isTheEndOfList == freezed
          ? _value.isTheEndOfList
          : isTheEndOfList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadedNews implements _LoadedNews {
  const _$_LoadedNews(this.news, this.isTheEndOfList);

  @override
  final List<NewsItem> news;
  @override
  final bool isTheEndOfList;

  @override
  String toString() {
    return 'CultureTabState.loadedNews(news: $news, isTheEndOfList: $isTheEndOfList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadedNews &&
            const DeepCollectionEquality().equals(other.news, news) &&
            const DeepCollectionEquality()
                .equals(other.isTheEndOfList, isTheEndOfList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(news),
      const DeepCollectionEquality().hash(isTheEndOfList));

  @JsonKey(ignore: true)
  @override
  _$LoadedNewsCopyWith<_LoadedNews> get copyWith =>
      __$LoadedNewsCopyWithImpl<_LoadedNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNews,
    required TResult Function(List<NewsItem> news, bool isTheEndOfList)
        loadedNews,
    required TResult Function(String error) newsError,
    required TResult Function() resetList,
  }) {
    return loadedNews(news, isTheEndOfList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
  }) {
    return loadedNews?.call(news, isTheEndOfList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
    required TResult orElse(),
  }) {
    if (loadedNews != null) {
      return loadedNews(news, isTheEndOfList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNews value) loadingNews,
    required TResult Function(_LoadedNews value) loadedNews,
    required TResult Function(_NewsError value) newsError,
    required TResult Function(_ResetList value) resetList,
  }) {
    return loadedNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNews value)? loadingNews,
    TResult Function(_LoadedNews value)? loadedNews,
    TResult Function(_NewsError value)? newsError,
    TResult Function(_ResetList value)? resetList,
  }) {
    return loadedNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNews value)? loadingNews,
    TResult Function(_LoadedNews value)? loadedNews,
    TResult Function(_NewsError value)? newsError,
    TResult Function(_ResetList value)? resetList,
    required TResult orElse(),
  }) {
    if (loadedNews != null) {
      return loadedNews(this);
    }
    return orElse();
  }
}

abstract class _LoadedNews implements CultureTabState {
  const factory _LoadedNews(List<NewsItem> news, bool isTheEndOfList) =
      _$_LoadedNews;

  List<NewsItem> get news;
  bool get isTheEndOfList;
  @JsonKey(ignore: true)
  _$LoadedNewsCopyWith<_LoadedNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NewsErrorCopyWith<$Res> {
  factory _$NewsErrorCopyWith(
          _NewsError value, $Res Function(_NewsError) then) =
      __$NewsErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$NewsErrorCopyWithImpl<$Res> extends _$CultureTabStateCopyWithImpl<$Res>
    implements _$NewsErrorCopyWith<$Res> {
  __$NewsErrorCopyWithImpl(_NewsError _value, $Res Function(_NewsError) _then)
      : super(_value, (v) => _then(v as _NewsError));

  @override
  _NewsError get _value => super._value as _NewsError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_NewsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewsError implements _NewsError {
  const _$_NewsError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CultureTabState.newsError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$NewsErrorCopyWith<_NewsError> get copyWith =>
      __$NewsErrorCopyWithImpl<_NewsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNews,
    required TResult Function(List<NewsItem> news, bool isTheEndOfList)
        loadedNews,
    required TResult Function(String error) newsError,
    required TResult Function() resetList,
  }) {
    return newsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
  }) {
    return newsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
    required TResult orElse(),
  }) {
    if (newsError != null) {
      return newsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNews value) loadingNews,
    required TResult Function(_LoadedNews value) loadedNews,
    required TResult Function(_NewsError value) newsError,
    required TResult Function(_ResetList value) resetList,
  }) {
    return newsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNews value)? loadingNews,
    TResult Function(_LoadedNews value)? loadedNews,
    TResult Function(_NewsError value)? newsError,
    TResult Function(_ResetList value)? resetList,
  }) {
    return newsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNews value)? loadingNews,
    TResult Function(_LoadedNews value)? loadedNews,
    TResult Function(_NewsError value)? newsError,
    TResult Function(_ResetList value)? resetList,
    required TResult orElse(),
  }) {
    if (newsError != null) {
      return newsError(this);
    }
    return orElse();
  }
}

abstract class _NewsError implements CultureTabState {
  const factory _NewsError(String error) = _$_NewsError;

  String get error;
  @JsonKey(ignore: true)
  _$NewsErrorCopyWith<_NewsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResetListCopyWith<$Res> {
  factory _$ResetListCopyWith(
          _ResetList value, $Res Function(_ResetList) then) =
      __$ResetListCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetListCopyWithImpl<$Res> extends _$CultureTabStateCopyWithImpl<$Res>
    implements _$ResetListCopyWith<$Res> {
  __$ResetListCopyWithImpl(_ResetList _value, $Res Function(_ResetList) _then)
      : super(_value, (v) => _then(v as _ResetList));

  @override
  _ResetList get _value => super._value as _ResetList;
}

/// @nodoc

class _$_ResetList implements _ResetList {
  const _$_ResetList();

  @override
  String toString() {
    return 'CultureTabState.resetList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResetList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNews,
    required TResult Function(List<NewsItem> news, bool isTheEndOfList)
        loadedNews,
    required TResult Function(String error) newsError,
    required TResult Function() resetList,
  }) {
    return resetList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
  }) {
    return resetList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
    required TResult orElse(),
  }) {
    if (resetList != null) {
      return resetList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNews value) loadingNews,
    required TResult Function(_LoadedNews value) loadedNews,
    required TResult Function(_NewsError value) newsError,
    required TResult Function(_ResetList value) resetList,
  }) {
    return resetList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNews value)? loadingNews,
    TResult Function(_LoadedNews value)? loadedNews,
    TResult Function(_NewsError value)? newsError,
    TResult Function(_ResetList value)? resetList,
  }) {
    return resetList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNews value)? loadingNews,
    TResult Function(_LoadedNews value)? loadedNews,
    TResult Function(_NewsError value)? newsError,
    TResult Function(_ResetList value)? resetList,
    required TResult orElse(),
  }) {
    if (resetList != null) {
      return resetList(this);
    }
    return orElse();
  }
}

abstract class _ResetList implements CultureTabState {
  const factory _ResetList() = _$_ResetList;
}
