// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsResponseModel _$$_NewsResponseModelFromJson(Map<String, dynamic> json) =>
    _$_NewsResponseModel(
      status: json['status'] as String,
      totalResults: json['totalResults'] as int,
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => NewsArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewsResponseModelToJson(
        _$_NewsResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };

_$_NewsArticle _$$_NewsArticleFromJson(Map<String, dynamic> json) =>
    _$_NewsArticle(
      source: json['source'] == null
          ? null
          : NewsSource.fromJson(json['source'] as Map<String, dynamic>),
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_NewsArticleToJson(_$_NewsArticle instance) =>
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

_$_NewsSource _$$_NewsSourceFromJson(Map<String, dynamic> json) =>
    _$_NewsSource(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_NewsSourceToJson(_$_NewsSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
