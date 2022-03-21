// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsItem _$NewsItemFromJson(Map<String, dynamic> json) {
  return _NewsItem.fromJson(json);
}

/// @nodoc
class _$NewsItemTearOff {
  const _$NewsItemTearOff();

  _NewsItem call(
      {required String headline,
      required String trailText,
      required String publishDate,
      required String author,
      required String content,
      required String thumbnail}) {
    return _NewsItem(
      headline: headline,
      trailText: trailText,
      publishDate: publishDate,
      author: author,
      content: content,
      thumbnail: thumbnail,
    );
  }

  NewsItem fromJson(Map<String, Object?> json) {
    return NewsItem.fromJson(json);
  }
}

/// @nodoc
const $NewsItem = _$NewsItemTearOff();

/// @nodoc
mixin _$NewsItem {
  String get headline => throw _privateConstructorUsedError;
  String get trailText => throw _privateConstructorUsedError;
  String get publishDate => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsItemCopyWith<NewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsItemCopyWith<$Res> {
  factory $NewsItemCopyWith(NewsItem value, $Res Function(NewsItem) then) =
      _$NewsItemCopyWithImpl<$Res>;
  $Res call(
      {String headline,
      String trailText,
      String publishDate,
      String author,
      String content,
      String thumbnail});
}

/// @nodoc
class _$NewsItemCopyWithImpl<$Res> implements $NewsItemCopyWith<$Res> {
  _$NewsItemCopyWithImpl(this._value, this._then);

  final NewsItem _value;
  // ignore: unused_field
  final $Res Function(NewsItem) _then;

  @override
  $Res call({
    Object? headline = freezed,
    Object? trailText = freezed,
    Object? publishDate = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      headline: headline == freezed
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      trailText: trailText == freezed
          ? _value.trailText
          : trailText // ignore: cast_nullable_to_non_nullable
              as String,
      publishDate: publishDate == freezed
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NewsItemCopyWith<$Res> implements $NewsItemCopyWith<$Res> {
  factory _$NewsItemCopyWith(_NewsItem value, $Res Function(_NewsItem) then) =
      __$NewsItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String headline,
      String trailText,
      String publishDate,
      String author,
      String content,
      String thumbnail});
}

/// @nodoc
class __$NewsItemCopyWithImpl<$Res> extends _$NewsItemCopyWithImpl<$Res>
    implements _$NewsItemCopyWith<$Res> {
  __$NewsItemCopyWithImpl(_NewsItem _value, $Res Function(_NewsItem) _then)
      : super(_value, (v) => _then(v as _NewsItem));

  @override
  _NewsItem get _value => super._value as _NewsItem;

  @override
  $Res call({
    Object? headline = freezed,
    Object? trailText = freezed,
    Object? publishDate = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_NewsItem(
      headline: headline == freezed
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      trailText: trailText == freezed
          ? _value.trailText
          : trailText // ignore: cast_nullable_to_non_nullable
              as String,
      publishDate: publishDate == freezed
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsItem implements _NewsItem {
  _$_NewsItem(
      {required this.headline,
      required this.trailText,
      required this.publishDate,
      required this.author,
      required this.content,
      required this.thumbnail});

  factory _$_NewsItem.fromJson(Map<String, dynamic> json) =>
      _$$_NewsItemFromJson(json);

  @override
  final String headline;
  @override
  final String trailText;
  @override
  final String publishDate;
  @override
  final String author;
  @override
  final String content;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'NewsItem(headline: $headline, trailText: $trailText, publishDate: $publishDate, author: $author, content: $content, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsItem &&
            const DeepCollectionEquality().equals(other.headline, headline) &&
            const DeepCollectionEquality().equals(other.trailText, trailText) &&
            const DeepCollectionEquality()
                .equals(other.publishDate, publishDate) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(headline),
      const DeepCollectionEquality().hash(trailText),
      const DeepCollectionEquality().hash(publishDate),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(thumbnail));

  @JsonKey(ignore: true)
  @override
  _$NewsItemCopyWith<_NewsItem> get copyWith =>
      __$NewsItemCopyWithImpl<_NewsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsItemToJson(this);
  }
}

abstract class _NewsItem implements NewsItem {
  factory _NewsItem(
      {required String headline,
      required String trailText,
      required String publishDate,
      required String author,
      required String content,
      required String thumbnail}) = _$_NewsItem;

  factory _NewsItem.fromJson(Map<String, dynamic> json) = _$_NewsItem.fromJson;

  @override
  String get headline;
  @override
  String get trailText;
  @override
  String get publishDate;
  @override
  String get author;
  @override
  String get content;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$NewsItemCopyWith<_NewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}
