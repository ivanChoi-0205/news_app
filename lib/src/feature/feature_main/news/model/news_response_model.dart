import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_response_model.freezed.dart';
part 'news_response_model.g.dart';

@freezed
class NewsResponseModel with _$NewsResponseModel {
  // Enable this line when custom variable exists (e.g hasArticles)
  // const EverythingNewsListModel._();
  const factory NewsResponseModel({
    required String status,
    required int totalResults,
    List<NewsArticle>? articles,
  }) = _NewsResponseModel;

  // bool hasArticles() {
  //   final isNotEmptyArticles = (articles?.length ?? 0) > 0;
  //   if (totalResults > 0 && isNotEmptyArticles) {
  //     return true;
  //   }
  //   return false;
  // }

  factory NewsResponseModel.fromJson(Map<String, Object?> json) =>
      _$NewsResponseModelFromJson(json);
  // _$EverythingNewsListModelFromJson(json).copyWith(totalResults: 100);
}

@freezed
class NewsArticle with _$NewsArticle {
  const factory NewsArticle({
    NewsSource? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) = _NewsArticle;

  factory NewsArticle.fromJson(Map<String, Object?> json) =>
      _$NewsArticleFromJson(json);
}

@freezed
class NewsSource with _$NewsSource {
  const factory NewsSource({
    String? id,
    String? name,
  }) = _NewsSource;

  factory NewsSource.fromJson(Map<String, Object?> json) =>
      _$NewsSourceFromJson(json);
}
