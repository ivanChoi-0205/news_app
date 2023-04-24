// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsResponseModel _$NewsResponseModelFromJson(Map<String, dynamic> json) {
  return _NewsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$NewsResponseModel {
  String get status => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<NewsArticle>? get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsResponseModelCopyWith<NewsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsResponseModelCopyWith<$Res> {
  factory $NewsResponseModelCopyWith(
          NewsResponseModel value, $Res Function(NewsResponseModel) then) =
      _$NewsResponseModelCopyWithImpl<$Res, NewsResponseModel>;
  @useResult
  $Res call({String status, int totalResults, List<NewsArticle>? articles});
}

/// @nodoc
class _$NewsResponseModelCopyWithImpl<$Res, $Val extends NewsResponseModel>
    implements $NewsResponseModelCopyWith<$Res> {
  _$NewsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsResponseModelCopyWith<$Res>
    implements $NewsResponseModelCopyWith<$Res> {
  factory _$$_NewsResponseModelCopyWith(_$_NewsResponseModel value,
          $Res Function(_$_NewsResponseModel) then) =
      __$$_NewsResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, int totalResults, List<NewsArticle>? articles});
}

/// @nodoc
class __$$_NewsResponseModelCopyWithImpl<$Res>
    extends _$NewsResponseModelCopyWithImpl<$Res, _$_NewsResponseModel>
    implements _$$_NewsResponseModelCopyWith<$Res> {
  __$$_NewsResponseModelCopyWithImpl(
      _$_NewsResponseModel _value, $Res Function(_$_NewsResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = freezed,
  }) {
    return _then(_$_NewsResponseModel(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsResponseModel implements _NewsResponseModel {
  const _$_NewsResponseModel(
      {required this.status,
      required this.totalResults,
      final List<NewsArticle>? articles})
      : _articles = articles;

  factory _$_NewsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsResponseModelFromJson(json);

  @override
  final String status;
  @override
  final int totalResults;
  final List<NewsArticle>? _articles;
  @override
  List<NewsArticle>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsResponseModel(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsResponseModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsResponseModelCopyWith<_$_NewsResponseModel> get copyWith =>
      __$$_NewsResponseModelCopyWithImpl<_$_NewsResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsResponseModelToJson(
      this,
    );
  }
}

abstract class _NewsResponseModel implements NewsResponseModel {
  const factory _NewsResponseModel(
      {required final String status,
      required final int totalResults,
      final List<NewsArticle>? articles}) = _$_NewsResponseModel;

  factory _NewsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_NewsResponseModel.fromJson;

  @override
  String get status;
  @override
  int get totalResults;
  @override
  List<NewsArticle>? get articles;
  @override
  @JsonKey(ignore: true)
  _$$_NewsResponseModelCopyWith<_$_NewsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsArticle _$NewsArticleFromJson(Map<String, dynamic> json) {
  return _NewsArticle.fromJson(json);
}

/// @nodoc
mixin _$NewsArticle {
  NewsSource? get source => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  String? get publishedAt => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsArticleCopyWith<NewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsArticleCopyWith<$Res> {
  factory $NewsArticleCopyWith(
          NewsArticle value, $Res Function(NewsArticle) then) =
      _$NewsArticleCopyWithImpl<$Res, NewsArticle>;
  @useResult
  $Res call(
      {NewsSource? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content});

  $NewsSourceCopyWith<$Res>? get source;
}

/// @nodoc
class _$NewsArticleCopyWithImpl<$Res, $Val extends NewsArticle>
    implements $NewsArticleCopyWith<$Res> {
  _$NewsArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsSource?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsSourceCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $NewsSourceCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsArticleCopyWith<$Res>
    implements $NewsArticleCopyWith<$Res> {
  factory _$$_NewsArticleCopyWith(
          _$_NewsArticle value, $Res Function(_$_NewsArticle) then) =
      __$$_NewsArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NewsSource? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content});

  @override
  $NewsSourceCopyWith<$Res>? get source;
}

/// @nodoc
class __$$_NewsArticleCopyWithImpl<$Res>
    extends _$NewsArticleCopyWithImpl<$Res, _$_NewsArticle>
    implements _$$_NewsArticleCopyWith<$Res> {
  __$$_NewsArticleCopyWithImpl(
      _$_NewsArticle _value, $Res Function(_$_NewsArticle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_NewsArticle(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsSource?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsArticle implements _NewsArticle {
  const _$_NewsArticle(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory _$_NewsArticle.fromJson(Map<String, dynamic> json) =>
      _$$_NewsArticleFromJson(json);

  @override
  final NewsSource? source;
  @override
  final String? author;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? urlToImage;
  @override
  final String? publishedAt;
  @override
  final String? content;

  @override
  String toString() {
    return 'NewsArticle(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsArticle &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, source, author, title,
      description, url, urlToImage, publishedAt, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsArticleCopyWith<_$_NewsArticle> get copyWith =>
      __$$_NewsArticleCopyWithImpl<_$_NewsArticle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsArticleToJson(
      this,
    );
  }
}

abstract class _NewsArticle implements NewsArticle {
  const factory _NewsArticle(
      {final NewsSource? source,
      final String? author,
      final String? title,
      final String? description,
      final String? url,
      final String? urlToImage,
      final String? publishedAt,
      final String? content}) = _$_NewsArticle;

  factory _NewsArticle.fromJson(Map<String, dynamic> json) =
      _$_NewsArticle.fromJson;

  @override
  NewsSource? get source;
  @override
  String? get author;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  String? get urlToImage;
  @override
  String? get publishedAt;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_NewsArticleCopyWith<_$_NewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsSource _$NewsSourceFromJson(Map<String, dynamic> json) {
  return _NewsSource.fromJson(json);
}

/// @nodoc
mixin _$NewsSource {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsSourceCopyWith<NewsSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSourceCopyWith<$Res> {
  factory $NewsSourceCopyWith(
          NewsSource value, $Res Function(NewsSource) then) =
      _$NewsSourceCopyWithImpl<$Res, NewsSource>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$NewsSourceCopyWithImpl<$Res, $Val extends NewsSource>
    implements $NewsSourceCopyWith<$Res> {
  _$NewsSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsSourceCopyWith<$Res>
    implements $NewsSourceCopyWith<$Res> {
  factory _$$_NewsSourceCopyWith(
          _$_NewsSource value, $Res Function(_$_NewsSource) then) =
      __$$_NewsSourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$_NewsSourceCopyWithImpl<$Res>
    extends _$NewsSourceCopyWithImpl<$Res, _$_NewsSource>
    implements _$$_NewsSourceCopyWith<$Res> {
  __$$_NewsSourceCopyWithImpl(
      _$_NewsSource _value, $Res Function(_$_NewsSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_NewsSource(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsSource implements _NewsSource {
  const _$_NewsSource({this.id, this.name});

  factory _$_NewsSource.fromJson(Map<String, dynamic> json) =>
      _$$_NewsSourceFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'NewsSource(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsSource &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsSourceCopyWith<_$_NewsSource> get copyWith =>
      __$$_NewsSourceCopyWithImpl<_$_NewsSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsSourceToJson(
      this,
    );
  }
}

abstract class _NewsSource implements NewsSource {
  const factory _NewsSource({final String? id, final String? name}) =
      _$_NewsSource;

  factory _NewsSource.fromJson(Map<String, dynamic> json) =
      _$_NewsSource.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_NewsSourceCopyWith<_$_NewsSource> get copyWith =>
      throw _privateConstructorUsedError;
}
