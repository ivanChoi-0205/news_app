// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everything_news_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EverythingNewsListModel _$$_EverythingNewsListModelFromJson(
        Map<String, dynamic> json) =>
    _$_EverythingNewsListModel(
      status: json['status'] as String,
      totalResults: json['totalResults'] as int,
      articles: (json['articles'] as List<dynamic>?)
          ?.map(
              (e) => EverythingNewsArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EverythingNewsListModelToJson(
        _$_EverythingNewsListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };

_$_EverythingNewsArticle _$$_EverythingNewsArticleFromJson(
        Map<String, dynamic> json) =>
    _$_EverythingNewsArticle(
      source: json['source'] == null
          ? null
          : EverythingNewsSource.fromJson(
              json['source'] as Map<String, dynamic>),
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_EverythingNewsArticleToJson(
        _$_EverythingNewsArticle instance) =>
    <String, dynamic>{
      'source': instance.source,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };

_$_EverythingNewsSource _$$_EverythingNewsSourceFromJson(
        Map<String, dynamic> json) =>
    _$_EverythingNewsSource(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_EverythingNewsSourceToJson(
        _$_EverythingNewsSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
