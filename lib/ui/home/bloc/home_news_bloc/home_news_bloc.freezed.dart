// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeNewsEventTearOff {
  const _$HomeNewsEventTearOff();

  _UnfilteredNews unfilteredNews() {
    return const _UnfilteredNews();
  }

  _SearchNews searchNews({required String? queryField}) {
    return _SearchNews(
      queryField: queryField,
    );
  }

  _OrderBy orderBy({required String? orderBy}) {
    return _OrderBy(
      orderBy: orderBy,
    );
  }

  _SelectDate selectDate({required String? fromDate, required String? toDate}) {
    return _SelectDate(
      fromDate: fromDate,
      toDate: toDate,
    );
  }

  _LoadNextPage loadNextPage() {
    return const _LoadNextPage();
  }
}

/// @nodoc
const $HomeNewsEvent = _$HomeNewsEventTearOff();

/// @nodoc
mixin _$HomeNewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unfilteredNews,
    required TResult Function(String? queryField) searchNews,
    required TResult Function(String? orderBy) orderBy,
    required TResult Function(String? fromDate, String? toDate) selectDate,
    required TResult Function() loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unfilteredNews,
    TResult Function(String? queryField)? searchNews,
    TResult Function(String? orderBy)? orderBy,
    TResult Function(String? fromDate, String? toDate)? selectDate,
    TResult Function()? loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unfilteredNews,
    TResult Function(String? queryField)? searchNews,
    TResult Function(String? orderBy)? orderBy,
    TResult Function(String? fromDate, String? toDate)? selectDate,
    TResult Function()? loadNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnfilteredNews value) unfilteredNews,
    required TResult Function(_SearchNews value) searchNews,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_LoadNextPage value) loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnfilteredNews value)? unfilteredNews,
    TResult Function(_SearchNews value)? searchNews,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_LoadNextPage value)? loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnfilteredNews value)? unfilteredNews,
    TResult Function(_SearchNews value)? searchNews,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNewsEventCopyWith<$Res> {
  factory $HomeNewsEventCopyWith(
          HomeNewsEvent value, $Res Function(HomeNewsEvent) then) =
      _$HomeNewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeNewsEventCopyWithImpl<$Res>
    implements $HomeNewsEventCopyWith<$Res> {
  _$HomeNewsEventCopyWithImpl(this._value, this._then);

  final HomeNewsEvent _value;
  // ignore: unused_field
  final $Res Function(HomeNewsEvent) _then;
}

/// @nodoc
abstract class _$UnfilteredNewsCopyWith<$Res> {
  factory _$UnfilteredNewsCopyWith(
          _UnfilteredNews value, $Res Function(_UnfilteredNews) then) =
      __$UnfilteredNewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnfilteredNewsCopyWithImpl<$Res>
    extends _$HomeNewsEventCopyWithImpl<$Res>
    implements _$UnfilteredNewsCopyWith<$Res> {
  __$UnfilteredNewsCopyWithImpl(
      _UnfilteredNews _value, $Res Function(_UnfilteredNews) _then)
      : super(_value, (v) => _then(v as _UnfilteredNews));

  @override
  _UnfilteredNews get _value => super._value as _UnfilteredNews;
}

/// @nodoc

class _$_UnfilteredNews implements _UnfilteredNews {
  const _$_UnfilteredNews();

  @override
  String toString() {
    return 'HomeNewsEvent.unfilteredNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnfilteredNews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unfilteredNews,
    required TResult Function(String? queryField) searchNews,
    required TResult Function(String? orderBy) orderBy,
    required TResult Function(String? fromDate, String? toDate) selectDate,
    required TResult Function() loadNextPage,
  }) {
    return unfilteredNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unfilteredNews,
    TResult Function(String? queryField)? searchNews,
    TResult Function(String? orderBy)? orderBy,
    TResult Function(String? fromDate, String? toDate)? selectDate,
    TResult Function()? loadNextPage,
  }) {
    return unfilteredNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unfilteredNews,
    TResult Function(String? queryField)? searchNews,
    TResult Function(String? orderBy)? orderBy,
    TResult Function(String? fromDate, String? toDate)? selectDate,
    TResult Function()? loadNextPage,
    required TResult orElse(),
  }) {
    if (unfilteredNews != null) {
      return unfilteredNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnfilteredNews value) unfilteredNews,
    required TResult Function(_SearchNews value) searchNews,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_LoadNextPage value) loadNextPage,
  }) {
    return unfilteredNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnfilteredNews value)? unfilteredNews,
    TResult Function(_SearchNews value)? searchNews,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_LoadNextPage value)? loadNextPage,
  }) {
    return unfilteredNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnfilteredNews value)? unfilteredNews,
    TResult Function(_SearchNews value)? searchNews,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) {
    if (unfilteredNews != null) {
      return unfilteredNews(this);
    }
    return orElse();
  }
}

abstract class _UnfilteredNews implements HomeNewsEvent {
  const factory _UnfilteredNews() = _$_UnfilteredNews;
}

/// @nodoc
abstract class _$SearchNewsCopyWith<$Res> {
  factory _$SearchNewsCopyWith(
          _SearchNews value, $Res Function(_SearchNews) then) =
      __$SearchNewsCopyWithImpl<$Res>;
  $Res call({String? queryField});
}

/// @nodoc
class __$SearchNewsCopyWithImpl<$Res> extends _$HomeNewsEventCopyWithImpl<$Res>
    implements _$SearchNewsCopyWith<$Res> {
  __$SearchNewsCopyWithImpl(
      _SearchNews _value, $Res Function(_SearchNews) _then)
      : super(_value, (v) => _then(v as _SearchNews));

  @override
  _SearchNews get _value => super._value as _SearchNews;

  @override
  $Res call({
    Object? queryField = freezed,
  }) {
    return _then(_SearchNews(
      queryField: queryField == freezed
          ? _value.queryField
          : queryField // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchNews implements _SearchNews {
  const _$_SearchNews({required this.queryField});

  @override
  final String? queryField;

  @override
  String toString() {
    return 'HomeNewsEvent.searchNews(queryField: $queryField)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchNews &&
            const DeepCollectionEquality()
                .equals(other.queryField, queryField));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(queryField));

  @JsonKey(ignore: true)
  @override
  _$SearchNewsCopyWith<_SearchNews> get copyWith =>
      __$SearchNewsCopyWithImpl<_SearchNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unfilteredNews,
    required TResult Function(String? queryField) searchNews,
    required TResult Function(String? orderBy) orderBy,
    required TResult Function(String? fromDate, String? toDate) selectDate,
    required TResult Function() loadNextPage,
  }) {
    return searchNews(queryField);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unfilteredNews,
    TResult Function(String? queryField)? searchNews,
    TResult Function(String? orderBy)? orderBy,
    TResult Function(String? fromDate, String? toDate)? selectDate,
    TResult Function()? loadNextPage,
  }) {
    return searchNews?.call(queryField);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unfilteredNews,
    TResult Function(String? queryField)? searchNews,
    TResult Function(String? orderBy)? orderBy,
    TResult Function(String? fromDate, String? toDate)? selectDate,
    TResult Function()? loadNextPage,
    required TResult orElse(),
  }) {
    if (searchNews != null) {
      return searchNews(queryField);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnfilteredNews value) unfilteredNews,
    required TResult Function(_SearchNews value) searchNews,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_LoadNextPage value) loadNextPage,
  }) {
    return searchNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnfilteredNews value)? unfilteredNews,
    TResult Function(_SearchNews value)? searchNews,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_LoadNextPage value)? loadNextPage,
  }) {
    return searchNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnfilteredNews value)? unfilteredNews,
    TResult Function(_SearchNews value)? searchNews,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) {
    if (searchNews != null) {
      return searchNews(this);
    }
    return orElse();
  }
}

abstract class _SearchNews implements HomeNewsEvent {
  const factory _SearchNews({required String? queryField}) = _$_SearchNews;

  String? get queryField;
  @JsonKey(ignore: true)
  _$SearchNewsCopyWith<_SearchNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OrderByCopyWith<$Res> {
  factory _$OrderByCopyWith(_OrderBy value, $Res Function(_OrderBy) then) =
      __$OrderByCopyWithImpl<$Res>;
  $Res call({String? orderBy});
}

/// @nodoc
class __$OrderByCopyWithImpl<$Res> extends _$HomeNewsEventCopyWithImpl<$Res>
    implements _$OrderByCopyWith<$Res> {
  __$OrderByCopyWithImpl(_OrderBy _value, $Res Function(_OrderBy) _then)
      : super(_value, (v) => _then(v as _OrderBy));

  @override
  _OrderBy get _value => super._value as _OrderBy;

  @override
  $Res call({
    Object? orderBy = freezed,
  }) {
    return _then(_OrderBy(
      orderBy: orderBy == freezed
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OrderBy implements _OrderBy {
  const _$_OrderBy({required this.orderBy});

  @override
  final String? orderBy;

  @override
  String toString() {
    return 'HomeNewsEvent.orderBy(orderBy: $orderBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderBy &&
            const DeepCollectionEquality().equals(other.orderBy, orderBy));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(orderBy));

  @JsonKey(ignore: true)
  @override
  _$OrderByCopyWith<_OrderBy> get copyWith =>
      __$OrderByCopyWithImpl<_OrderBy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unfilteredNews,
    required TResult Function(String? queryField) searchNews,
    required TResult Function(String? orderBy) orderBy,
    required TResult Function(String? fromDate, String? toDate) selectDate,
    required TResult Function() loadNextPage,
  }) {
    return orderBy(this.orderBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unfilteredNews,
    TResult Function(String? queryField)? searchNews,
    TResult Function(String? orderBy)? orderBy,
    TResult Function(String? fromDate, String? toDate)? selectDate,
    TResult Function()? loadNextPage,
  }) {
    return orderBy?.call(this.orderBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unfilteredNews,
    TResult Function(String? queryField)? searchNews,
    TResult Function(String? orderBy)? orderBy,
    TResult Function(String? fromDate, String? toDate)? selectDate,
    TResult Function()? loadNextPage,
    required TResult orElse(),
  }) {
    if (orderBy != null) {
      return orderBy(this.orderBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnfilteredNews value) unfilteredNews,
    required TResult Function(_SearchNews value) searchNews,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_LoadNextPage value) loadNextPage,
  }) {
    return orderBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnfilteredNews value)? unfilteredNews,
    TResult Function(_SearchNews value)? searchNews,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_LoadNextPage value)? loadNextPage,
  }) {
    return orderBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnfilteredNews value)? unfilteredNews,
    TResult Function(_SearchNews value)? searchNews,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) {
    if (orderBy != null) {
      return orderBy(this);
    }
    return orElse();
  }
}

abstract class _OrderBy implements HomeNewsEvent {
  const factory _OrderBy({required String? orderBy}) = _$_OrderBy;

  String? get orderBy;
  @JsonKey(ignore: true)
  _$OrderByCopyWith<_OrderBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectDateCopyWith<$Res> {
  factory _$SelectDateCopyWith(
          _SelectDate value, $Res Function(_SelectDate) then) =
      __$SelectDateCopyWithImpl<$Res>;
  $Res call({String? fromDate, String? toDate});
}

/// @nodoc
class __$SelectDateCopyWithImpl<$Res> extends _$HomeNewsEventCopyWithImpl<$Res>
    implements _$SelectDateCopyWith<$Res> {
  __$SelectDateCopyWithImpl(
      _SelectDate _value, $Res Function(_SelectDate) _then)
      : super(_value, (v) => _then(v as _SelectDate));

  @override
  _SelectDate get _value => super._value as _SelectDate;

  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_SelectDate(
      fromDate: fromDate == freezed
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: toDate == freezed
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SelectDate implements _SelectDate {
  const _$_SelectDate({required this.fromDate, required this.toDate});

  @override
  final String? fromDate;
  @override
  final String? toDate;

  @override
  String toString() {
    return 'HomeNewsEvent.selectDate(fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectDate &&
            const DeepCollectionEquality().equals(other.fromDate, fromDate) &&
            const DeepCollectionEquality().equals(other.toDate, toDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fromDate),
      const DeepCollectionEquality().hash(toDate));

  @JsonKey(ignore: true)
  @override
  _$SelectDateCopyWith<_SelectDate> get copyWith =>
      __$SelectDateCopyWithImpl<_SelectDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unfilteredNews,
    required TResult Function(String? queryField) searchNews,
    required TResult Function(String? orderBy) orderBy,
    required TResult Function(String? fromDate, String? toDate) selectDate,
    required TResult Function() loadNextPage,
  }) {
    return selectDate(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unfilteredNews,
    TResult Function(String? queryField)? searchNews,
    TResult Function(String? orderBy)? orderBy,
    TResult Function(String? fromDate, String? toDate)? selectDate,
    TResult Function()? loadNextPage,
  }) {
    return selectDate?.call(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unfilteredNews,
    TResult Function(String? queryField)? searchNews,
    TResult Function(String? orderBy)? orderBy,
    TResult Function(String? fromDate, String? toDate)? selectDate,
    TResult Function()? loadNextPage,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnfilteredNews value) unfilteredNews,
    required TResult Function(_SearchNews value) searchNews,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_LoadNextPage value) loadNextPage,
  }) {
    return selectDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnfilteredNews value)? unfilteredNews,
    TResult Function(_SearchNews value)? searchNews,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_LoadNextPage value)? loadNextPage,
  }) {
    return selectDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnfilteredNews value)? unfilteredNews,
    TResult Function(_SearchNews value)? searchNews,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(this);
    }
    return orElse();
  }
}

abstract class _SelectDate implements HomeNewsEvent {
  const factory _SelectDate(
      {required String? fromDate, required String? toDate}) = _$_SelectDate;

  String? get fromDate;
  String? get toDate;
  @JsonKey(ignore: true)
  _$SelectDateCopyWith<_SelectDate> get copyWith =>
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
    extends _$HomeNewsEventCopyWithImpl<$Res>
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
    return 'HomeNewsEvent.loadNextPage()';
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
    required TResult Function() unfilteredNews,
    required TResult Function(String? queryField) searchNews,
    required TResult Function(String? orderBy) orderBy,
    required TResult Function(String? fromDate, String? toDate) selectDate,
    required TResult Function() loadNextPage,
  }) {
    return loadNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unfilteredNews,
    TResult Function(String? queryField)? searchNews,
    TResult Function(String? orderBy)? orderBy,
    TResult Function(String? fromDate, String? toDate)? selectDate,
    TResult Function()? loadNextPage,
  }) {
    return loadNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unfilteredNews,
    TResult Function(String? queryField)? searchNews,
    TResult Function(String? orderBy)? orderBy,
    TResult Function(String? fromDate, String? toDate)? selectDate,
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
    required TResult Function(_UnfilteredNews value) unfilteredNews,
    required TResult Function(_SearchNews value) searchNews,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_LoadNextPage value) loadNextPage,
  }) {
    return loadNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnfilteredNews value)? unfilteredNews,
    TResult Function(_SearchNews value)? searchNews,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_LoadNextPage value)? loadNextPage,
  }) {
    return loadNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnfilteredNews value)? unfilteredNews,
    TResult Function(_SearchNews value)? searchNews,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(this);
    }
    return orElse();
  }
}

abstract class _LoadNextPage implements HomeNewsEvent {
  const factory _LoadNextPage() = _$_LoadNextPage;
}

/// @nodoc
class _$HomeNewsStateTearOff {
  const _$HomeNewsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadingNews loadingNews() {
    return const _LoadingNews();
  }

  _LoadedNews loadedNews(List<NewsItem> news, {bool? isTheEndOfList}) {
    return _LoadedNews(
      news,
      isTheEndOfList: isTheEndOfList,
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
const $HomeNewsState = _$HomeNewsStateTearOff();

/// @nodoc
mixin _$HomeNewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNews,
    required TResult Function(List<NewsItem> news, bool? isTheEndOfList)
        loadedNews,
    required TResult Function(String error) newsError,
    required TResult Function() resetList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool? isTheEndOfList)? loadedNews,
    TResult Function(String error)? newsError,
    TResult Function()? resetList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNews,
    TResult Function(List<NewsItem> news, bool? isTheEndOfList)? loadedNews,
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
abstract class $HomeNewsStateCopyWith<$Res> {
  factory $HomeNewsStateCopyWith(
          HomeNewsState value, $Res Function(HomeNewsState) then) =
      _$HomeNewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeNewsStateCopyWithImpl<$Res>
    implements $HomeNewsStateCopyWith<$Res> {
  _$HomeNewsStateCopyWithImpl(this._value, this._then);

  final HomeNewsState _value;
  // ignore: unused_field
  final $Res Function(HomeNewsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeNewsStateCopyWithImpl<$Res>
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
    return 'HomeNewsState.initial()';
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
    required TResult Function(List<NewsItem> news, bool? isTheEndOfList)
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
    TResult Function(List<NewsItem> news, bool? isTheEndOfList)? loadedNews,
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
    TResult Function(List<NewsItem> news, bool? isTheEndOfList)? loadedNews,
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

abstract class _Initial implements HomeNewsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingNewsCopyWith<$Res> {
  factory _$LoadingNewsCopyWith(
          _LoadingNews value, $Res Function(_LoadingNews) then) =
      __$LoadingNewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingNewsCopyWithImpl<$Res> extends _$HomeNewsStateCopyWithImpl<$Res>
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
    return 'HomeNewsState.loadingNews()';
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
    required TResult Function(List<NewsItem> news, bool? isTheEndOfList)
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
    TResult Function(List<NewsItem> news, bool? isTheEndOfList)? loadedNews,
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
    TResult Function(List<NewsItem> news, bool? isTheEndOfList)? loadedNews,
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

abstract class _LoadingNews implements HomeNewsState {
  const factory _LoadingNews() = _$_LoadingNews;
}

/// @nodoc
abstract class _$LoadedNewsCopyWith<$Res> {
  factory _$LoadedNewsCopyWith(
          _LoadedNews value, $Res Function(_LoadedNews) then) =
      __$LoadedNewsCopyWithImpl<$Res>;
  $Res call({List<NewsItem> news, bool? isTheEndOfList});
}

/// @nodoc
class __$LoadedNewsCopyWithImpl<$Res> extends _$HomeNewsStateCopyWithImpl<$Res>
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
      isTheEndOfList: isTheEndOfList == freezed
          ? _value.isTheEndOfList
          : isTheEndOfList // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_LoadedNews implements _LoadedNews {
  const _$_LoadedNews(this.news, {this.isTheEndOfList});

  @override
  final List<NewsItem> news;
  @override
  final bool? isTheEndOfList;

  @override
  String toString() {
    return 'HomeNewsState.loadedNews(news: $news, isTheEndOfList: $isTheEndOfList)';
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
    required TResult Function(List<NewsItem> news, bool? isTheEndOfList)
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
    TResult Function(List<NewsItem> news, bool? isTheEndOfList)? loadedNews,
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
    TResult Function(List<NewsItem> news, bool? isTheEndOfList)? loadedNews,
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

abstract class _LoadedNews implements HomeNewsState {
  const factory _LoadedNews(List<NewsItem> news, {bool? isTheEndOfList}) =
      _$_LoadedNews;

  List<NewsItem> get news;
  bool? get isTheEndOfList;
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
class __$NewsErrorCopyWithImpl<$Res> extends _$HomeNewsStateCopyWithImpl<$Res>
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
    return 'HomeNewsState.newsError(error: $error)';
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
    required TResult Function(List<NewsItem> news, bool? isTheEndOfList)
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
    TResult Function(List<NewsItem> news, bool? isTheEndOfList)? loadedNews,
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
    TResult Function(List<NewsItem> news, bool? isTheEndOfList)? loadedNews,
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

abstract class _NewsError implements HomeNewsState {
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
class __$ResetListCopyWithImpl<$Res> extends _$HomeNewsStateCopyWithImpl<$Res>
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
    return 'HomeNewsState.resetList()';
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
    required TResult Function(List<NewsItem> news, bool? isTheEndOfList)
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
    TResult Function(List<NewsItem> news, bool? isTheEndOfList)? loadedNews,
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
    TResult Function(List<NewsItem> news, bool? isTheEndOfList)? loadedNews,
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

abstract class _ResetList implements HomeNewsState {
  const factory _ResetList() = _$_ResetList;
}
