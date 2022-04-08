// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsItemAdapter extends TypeAdapter<NewsItem> {
  @override
  final int typeId = 0;

  @override
  NewsItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsItem(
      pages: fields[0] as int?,
      headline: fields[1] as String,
      trailText: fields[2] as String,
      publishDate: fields[3] as String,
      author: fields[4] as String?,
      content: fields[5] as String,
      thumbnail: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, NewsItem obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.pages)
      ..writeByte(1)
      ..write(obj.headline)
      ..writeByte(2)
      ..write(obj.trailText)
      ..writeByte(3)
      ..write(obj.publishDate)
      ..writeByte(4)
      ..write(obj.author)
      ..writeByte(5)
      ..write(obj.content)
      ..writeByte(6)
      ..write(obj.thumbnail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsItem _$$_NewsItemFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['headline', 'trailText', 'publishDate', 'content'],
    disallowNullValues: const [
      'headline',
      'trailText',
      'publishDate',
      'content'
    ],
  );
  return _$_NewsItem(
    pages: json['pages'] as int?,
    headline: json['headline'] as String,
    trailText: json['trailText'] as String,
    publishDate: json['publishDate'] as String,
    author: json['author'] as String?,
    content: json['content'] as String,
    thumbnail: json['thumbnail'] as String?,
  );
}

Map<String, dynamic> _$$_NewsItemToJson(_$_NewsItem instance) =>
    <String, dynamic>{
      'pages': instance.pages,
      'headline': instance.headline,
      'trailText': instance.trailText,
      'publishDate': instance.publishDate,
      'author': instance.author,
      'content': instance.content,
      'thumbnail': instance.thumbnail,
    };
