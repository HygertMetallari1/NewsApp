// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsItem _$$_NewsItemFromJson(Map<String, dynamic> json) => _$_NewsItem(
      headline: json['headline'] as String,
      trailText: json['trailText'] as String,
      publishDate: json['publishDate'] as String,
      author: json['author'] as String,
      content: json['content'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$_NewsItemToJson(_$_NewsItem instance) =>
    <String, dynamic>{
      'headline': instance.headline,
      'trailText': instance.trailText,
      'publishDate': instance.publishDate,
      'author': instance.author,
      'content': instance.content,
      'thumbnail': instance.thumbnail,
    };
