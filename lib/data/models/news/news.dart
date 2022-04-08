import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@HiveType(typeId: 0, adapterName: "NewsItemAdapter")
@freezed
class NewsItem with _$NewsItem{
  factory NewsItem({
    @JsonKey(name: "pages" , required: false, nullable: true) @HiveField(0) int? pages,
    @JsonKey(name: "headline" , required: true, disallowNullValue: true) @HiveField(1) required String headline,
    @JsonKey(name: "trailText" , required: true, disallowNullValue: true) @HiveField(2) required String trailText,
    @JsonKey(name: "publishDate" , required: true, disallowNullValue: true) @HiveField(3) required String publishDate,
    @JsonKey(name: "author" , required: false, nullable: true) @HiveField(4) String? author,
    @JsonKey(name: "content" , required: true, disallowNullValue: true) @HiveField(5) required String content,
    @JsonKey(name: "thumbnail" , required: false, nullable: true) @HiveField(6) String? thumbnail,
  }) = _NewsItem;

  factory NewsItem.fromJson(Map<String, dynamic> json) => _$NewsItemFromJson(json);
}