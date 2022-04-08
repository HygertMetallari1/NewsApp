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
      {@JsonKey(name: "pages", required: false, nullable: true)
      @HiveField(0)
          int? pages,
      @JsonKey(name: "headline", required: true, disallowNullValue: true)
      @HiveField(1)
          required String headline,
      @JsonKey(name: "trailText", required: true, disallowNullValue: true)
      @HiveField(2)
          required String trailText,
      @JsonKey(name: "publishDate", required: true, disallowNullValue: true)
      @HiveField(3)
          required String publishDate,
      @JsonKey(name: "author", required: false, nullable: true)
      @HiveField(4)
          String? author,
      @JsonKey(name: "content", required: true, disallowNullValue: true)
      @HiveField(5)
          required String content,
      @JsonKey(name: "thumbnail", required: false, nullable: true)
      @HiveField(6)
          String? thumbnail}) {
    return _NewsItem(
      pages: pages,
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
  @JsonKey(name: "pages", required: false, nullable: true)
  @HiveField(0)
  int? get pages => throw _privateConstructorUsedError;
  @JsonKey(name: "headline", required: true, disallowNullValue: true)
  @HiveField(1)
  String get headline => throw _privateConstructorUsedError;
  @JsonKey(name: "trailText", required: true, disallowNullValue: true)
  @HiveField(2)
  String get trailText => throw _privateConstructorUsedError;
  @JsonKey(name: "publishDate", required: true, disallowNullValue: true)
  @HiveField(3)
  String get publishDate => throw _privateConstructorUsedError;
  @JsonKey(name: "author", required: false, nullable: true)
  @HiveField(4)
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: "content", required: true, disallowNullValue: true)
  @HiveField(5)
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail", required: false, nullable: true)
  @HiveField(6)
  String? get thumbnail => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "pages", required: false, nullable: true)
      @HiveField(0)
          int? pages,
      @JsonKey(name: "headline", required: true, disallowNullValue: true)
      @HiveField(1)
          String headline,
      @JsonKey(name: "trailText", required: true, disallowNullValue: true)
      @HiveField(2)
          String trailText,
      @JsonKey(name: "publishDate", required: true, disallowNullValue: true)
      @HiveField(3)
          String publishDate,
      @JsonKey(name: "author", required: false, nullable: true)
      @HiveField(4)
          String? author,
      @JsonKey(name: "content", required: true, disallowNullValue: true)
      @HiveField(5)
          String content,
      @JsonKey(name: "thumbnail", required: false, nullable: true)
      @HiveField(6)
          String? thumbnail});
}

/// @nodoc
class _$NewsItemCopyWithImpl<$Res> implements $NewsItemCopyWith<$Res> {
  _$NewsItemCopyWithImpl(this._value, this._then);

  final NewsItem _value;
  // ignore: unused_field
  final $Res Function(NewsItem) _then;

  @override
  $Res call({
    Object? pages = freezed,
    Object? headline = freezed,
    Object? trailText = freezed,
    Object? publishDate = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NewsItemCopyWith<$Res> implements $NewsItemCopyWith<$Res> {
  factory _$NewsItemCopyWith(_NewsItem value, $Res Function(_NewsItem) then) =
      __$NewsItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "pages", required: false, nullable: true)
      @HiveField(0)
          int? pages,
      @JsonKey(name: "headline", required: true, disallowNullValue: true)
      @HiveField(1)
          String headline,
      @JsonKey(name: "trailText", required: true, disallowNullValue: true)
      @HiveField(2)
          String trailText,
      @JsonKey(name: "publishDate", required: true, disallowNullValue: true)
      @HiveField(3)
          String publishDate,
      @JsonKey(name: "author", required: false, nullable: true)
      @HiveField(4)
          String? author,
      @JsonKey(name: "content", required: true, disallowNullValue: true)
      @HiveField(5)
          String content,
      @JsonKey(name: "thumbnail", required: false, nullable: true)
      @HiveField(6)
          String? thumbnail});
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
    Object? pages = freezed,
    Object? headline = freezed,
    Object? trailText = freezed,
    Object? publishDate = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_NewsItem(
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsItem implements _NewsItem {
  _$_NewsItem(
      {@JsonKey(name: "pages", required: false, nullable: true)
      @HiveField(0)
          this.pages,
      @JsonKey(name: "headline", required: true, disallowNullValue: true)
      @HiveField(1)
          required this.headline,
      @JsonKey(name: "trailText", required: true, disallowNullValue: true)
      @HiveField(2)
          required this.trailText,
      @JsonKey(name: "publishDate", required: true, disallowNullValue: true)
      @HiveField(3)
          required this.publishDate,
      @JsonKey(name: "author", required: false, nullable: true)
      @HiveField(4)
          this.author,
      @JsonKey(name: "content", required: true, disallowNullValue: true)
      @HiveField(5)
          required this.content,
      @JsonKey(name: "thumbnail", required: false, nullable: true)
      @HiveField(6)
          this.thumbnail});

  factory _$_NewsItem.fromJson(Map<String, dynamic> json) =>
      _$$_NewsItemFromJson(json);

  @override
  @JsonKey(name: "pages", required: false, nullable: true)
  @HiveField(0)
  final int? pages;
  @override
  @JsonKey(name: "headline", required: true, disallowNullValue: true)
  @HiveField(1)
  final String headline;
  @override
  @JsonKey(name: "trailText", required: true, disallowNullValue: true)
  @HiveField(2)
  final String trailText;
  @override
  @JsonKey(name: "publishDate", required: true, disallowNullValue: true)
  @HiveField(3)
  final String publishDate;
  @override
  @JsonKey(name: "author", required: false, nullable: true)
  @HiveField(4)
  final String? author;
  @override
  @JsonKey(name: "content", required: true, disallowNullValue: true)
  @HiveField(5)
  final String content;
  @override
  @JsonKey(name: "thumbnail", required: false, nullable: true)
  @HiveField(6)
  final String? thumbnail;

  @override
  String toString() {
    return 'NewsItem(pages: $pages, headline: $headline, trailText: $trailText, publishDate: $publishDate, author: $author, content: $content, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsItem &&
            const DeepCollectionEquality().equals(other.pages, pages) &&
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
      const DeepCollectionEquality().hash(pages),
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
      {@JsonKey(name: "pages", required: false, nullable: true)
      @HiveField(0)
          int? pages,
      @JsonKey(name: "headline", required: true, disallowNullValue: true)
      @HiveField(1)
          required String headline,
      @JsonKey(name: "trailText", required: true, disallowNullValue: true)
      @HiveField(2)
          required String trailText,
      @JsonKey(name: "publishDate", required: true, disallowNullValue: true)
      @HiveField(3)
          required String publishDate,
      @JsonKey(name: "author", required: false, nullable: true)
      @HiveField(4)
          String? author,
      @JsonKey(name: "content", required: true, disallowNullValue: true)
      @HiveField(5)
          required String content,
      @JsonKey(name: "thumbnail", required: false, nullable: true)
      @HiveField(6)
          String? thumbnail}) = _$_NewsItem;

  factory _NewsItem.fromJson(Map<String, dynamic> json) = _$_NewsItem.fromJson;

  @override
  @JsonKey(name: "pages", required: false, nullable: true)
  @HiveField(0)
  int? get pages;
  @override
  @JsonKey(name: "headline", required: true, disallowNullValue: true)
  @HiveField(1)
  String get headline;
  @override
  @JsonKey(name: "trailText", required: true, disallowNullValue: true)
  @HiveField(2)
  String get trailText;
  @override
  @JsonKey(name: "publishDate", required: true, disallowNullValue: true)
  @HiveField(3)
  String get publishDate;
  @override
  @JsonKey(name: "author", required: false, nullable: true)
  @HiveField(4)
  String? get author;
  @override
  @JsonKey(name: "content", required: true, disallowNullValue: true)
  @HiveField(5)
  String get content;
  @override
  @JsonKey(name: "thumbnail", required: false, nullable: true)
  @HiveField(6)
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$NewsItemCopyWith<_NewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}
