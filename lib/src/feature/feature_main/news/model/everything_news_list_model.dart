import 'package:freezed_annotation/freezed_annotation.dart';

part 'everything_news_list_model.freezed.dart';
part 'everything_news_list_model.g.dart';

//TODO: Rename to news_everything_list_response.dart

@freezed
class EverythingNewsListModel with _$EverythingNewsListModel {
  const factory EverythingNewsListModel({
    required String status,
    required int totalResults,
    List<EverythingNewsArticle>? articles,
  }) = _EverythingNewsListModel;

  factory EverythingNewsListModel.fromJson(Map<String, Object?> json) =>
      _$EverythingNewsListModelFromJson(json);
  // _$EverythingNewsListModelFromJson(json).copyWith(totalResults: 100);
}

@freezed
class EverythingNewsArticle with _$EverythingNewsArticle {
  const factory EverythingNewsArticle({
    EverythingNewsSource? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) = _EverythingNewsArticle;

  factory EverythingNewsArticle.fromJson(Map<String, Object?> json) =>
      _$EverythingNewsArticleFromJson(json);
}

@freezed
class EverythingNewsSource with _$EverythingNewsSource {
  const factory EverythingNewsSource({
    String? id,
    String? name,
  }) = _EverythingNewsSource;

  factory EverythingNewsSource.fromJson(Map<String, Object?> json) =>
      _$EverythingNewsSourceFromJson(json);
}
