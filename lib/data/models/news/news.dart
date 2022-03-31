import 'package:freezed_annotation/freezed_annotation.dart';
part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class NewsItem with _$NewsItem {
  factory NewsItem({
    int? pages,
    required String headline,
    required String trailText,
    required String publishDate,
    required String? author,
    required String content,
    required String? thumbnail,
  }) = _NewsItem;
  factory NewsItem.fromJson(Map<String, dynamic> json) => _$NewsItemFromJson(json);
}