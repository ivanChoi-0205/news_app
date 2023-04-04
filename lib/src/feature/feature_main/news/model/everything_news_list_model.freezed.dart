// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'everything_news_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EverythingNewsListModel _$EverythingNewsListModelFromJson(
    Map<String, dynamic> json) {
  return _EverythingNewsListModel.fromJson(json);
}

/// @nodoc
mixin _$EverythingNewsListModel {
  String get status => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<EverythingNewsArticle>? get articles =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EverythingNewsListModelCopyWith<EverythingNewsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EverythingNewsListModelCopyWith<$Res> {
  factory $EverythingNewsListModelCopyWith(EverythingNewsListModel value,
          $Res Function(EverythingNewsListModel) then) =
      _$EverythingNewsListModelCopyWithImpl<$Res, EverythingNewsListModel>;
  @useResult
  $Res call(
      {String status, int totalResults, List<EverythingNewsArticle>? articles});
}

/// @nodoc
class _$EverythingNewsListModelCopyWithImpl<$Res,
        $Val extends EverythingNewsListModel>
    implements $EverythingNewsListModelCopyWith<$Res> {
  _$EverythingNewsListModelCopyWithImpl(this._value, this._then);

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
              as List<EverythingNewsArticle>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EverythingNewsListModelCopyWith<$Res>
    implements $EverythingNewsListModelCopyWith<$Res> {
  factory _$$_EverythingNewsListModelCopyWith(_$_EverythingNewsListModel value,
          $Res Function(_$_EverythingNewsListModel) then) =
      __$$_EverythingNewsListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status, int totalResults, List<EverythingNewsArticle>? articles});
}

/// @nodoc
class __$$_EverythingNewsListModelCopyWithImpl<$Res>
    extends _$EverythingNewsListModelCopyWithImpl<$Res,
        _$_EverythingNewsListModel>
    implements _$$_EverythingNewsListModelCopyWith<$Res> {
  __$$_EverythingNewsListModelCopyWithImpl(_$_EverythingNewsListModel _value,
      $Res Function(_$_EverythingNewsListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = freezed,
  }) {
    return _then(_$_EverythingNewsListModel(
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
              as List<EverythingNewsArticle>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EverythingNewsListModel implements _EverythingNewsListModel {
  const _$_EverythingNewsListModel(
      {required this.status,
      required this.totalResults,
      final List<EverythingNewsArticle>? articles})
      : _articles = articles;

  factory _$_EverythingNewsListModel.fromJson(Map<String, dynamic> json) =>
      _$$_EverythingNewsListModelFromJson(json);

  @override
  final String status;
  @override
  final int totalResults;
  final List<EverythingNewsArticle>? _articles;
  @override
  List<EverythingNewsArticle>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EverythingNewsListModel(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EverythingNewsListModel &&
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
  _$$_EverythingNewsListModelCopyWith<_$_EverythingNewsListModel>
      get copyWith =>
          __$$_EverythingNewsListModelCopyWithImpl<_$_EverythingNewsListModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EverythingNewsListModelToJson(
      this,
    );
  }
}

abstract class _EverythingNewsListModel implements EverythingNewsListModel {
  const factory _EverythingNewsListModel(
          {required final String status,
          required final int totalResults,
          final List<EverythingNewsArticle>? articles}) =
      _$_EverythingNewsListModel;

  factory _EverythingNewsListModel.fromJson(Map<String, dynamic> json) =
      _$_EverythingNewsListModel.fromJson;

  @override
  String get status;
  @override
  int get totalResults;
  @override
  List<EverythingNewsArticle>? get articles;
  @override
  @JsonKey(ignore: true)
  _$$_EverythingNewsListModelCopyWith<_$_EverythingNewsListModel>
      get copyWith => throw _privateConstructorUsedError;
}

EverythingNewsArticle _$EverythingNewsArticleFromJson(
    Map<String, dynamic> json) {
  return _EverythingNewsArticle.fromJson(json);
}

/// @nodoc
mixin _$EverythingNewsArticle {
  EverythingNewsSource? get source => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  String? get publishedAt => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EverythingNewsArticleCopyWith<EverythingNewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EverythingNewsArticleCopyWith<$Res> {
  factory $EverythingNewsArticleCopyWith(EverythingNewsArticle value,
          $Res Function(EverythingNewsArticle) then) =
      _$EverythingNewsArticleCopyWithImpl<$Res, EverythingNewsArticle>;
  @useResult
  $Res call(
      {EverythingNewsSource? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content});

  $EverythingNewsSourceCopyWith<$Res>? get source;
}

/// @nodoc
class _$EverythingNewsArticleCopyWithImpl<$Res,
        $Val extends EverythingNewsArticle>
    implements $EverythingNewsArticleCopyWith<$Res> {
  _$EverythingNewsArticleCopyWithImpl(this._value, this._then);

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
              as EverythingNewsSource?,
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
  $EverythingNewsSourceCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $EverythingNewsSourceCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EverythingNewsArticleCopyWith<$Res>
    implements $EverythingNewsArticleCopyWith<$Res> {
  factory _$$_EverythingNewsArticleCopyWith(_$_EverythingNewsArticle value,
          $Res Function(_$_EverythingNewsArticle) then) =
      __$$_EverythingNewsArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EverythingNewsSource? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content});

  @override
  $EverythingNewsSourceCopyWith<$Res>? get source;
}

/// @nodoc
class __$$_EverythingNewsArticleCopyWithImpl<$Res>
    extends _$EverythingNewsArticleCopyWithImpl<$Res, _$_EverythingNewsArticle>
    implements _$$_EverythingNewsArticleCopyWith<$Res> {
  __$$_EverythingNewsArticleCopyWithImpl(_$_EverythingNewsArticle _value,
      $Res Function(_$_EverythingNewsArticle) _then)
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
    return _then(_$_EverythingNewsArticle(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as EverythingNewsSource?,
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
class _$_EverythingNewsArticle implements _EverythingNewsArticle {
  const _$_EverythingNewsArticle(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory _$_EverythingNewsArticle.fromJson(Map<String, dynamic> json) =>
      _$$_EverythingNewsArticleFromJson(json);

  @override
  final EverythingNewsSource? source;
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
    return 'EverythingNewsArticle(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EverythingNewsArticle &&
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
  _$$_EverythingNewsArticleCopyWith<_$_EverythingNewsArticle> get copyWith =>
      __$$_EverythingNewsArticleCopyWithImpl<_$_EverythingNewsArticle>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EverythingNewsArticleToJson(
      this,
    );
  }
}

abstract class _EverythingNewsArticle implements EverythingNewsArticle {
  const factory _EverythingNewsArticle(
      {final EverythingNewsSource? source,
      final String? author,
      final String? title,
      final String? description,
      final String? url,
      final String? urlToImage,
      final String? publishedAt,
      final String? content}) = _$_EverythingNewsArticle;

  factory _EverythingNewsArticle.fromJson(Map<String, dynamic> json) =
      _$_EverythingNewsArticle.fromJson;

  @override
  EverythingNewsSource? get source;
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
  _$$_EverythingNewsArticleCopyWith<_$_EverythingNewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

EverythingNewsSource _$EverythingNewsSourceFromJson(Map<String, dynamic> json) {
  return _EverythingNewsSource.fromJson(json);
}

/// @nodoc
mixin _$EverythingNewsSource {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EverythingNewsSourceCopyWith<EverythingNewsSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EverythingNewsSourceCopyWith<$Res> {
  factory $EverythingNewsSourceCopyWith(EverythingNewsSource value,
          $Res Function(EverythingNewsSource) then) =
      _$EverythingNewsSourceCopyWithImpl<$Res, EverythingNewsSource>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$EverythingNewsSourceCopyWithImpl<$Res,
        $Val extends EverythingNewsSource>
    implements $EverythingNewsSourceCopyWith<$Res> {
  _$EverythingNewsSourceCopyWithImpl(this._value, this._then);

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
abstract class _$$_EverythingNewsSourceCopyWith<$Res>
    implements $EverythingNewsSourceCopyWith<$Res> {
  factory _$$_EverythingNewsSourceCopyWith(_$_EverythingNewsSource value,
          $Res Function(_$_EverythingNewsSource) then) =
      __$$_EverythingNewsSourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$_EverythingNewsSourceCopyWithImpl<$Res>
    extends _$EverythingNewsSourceCopyWithImpl<$Res, _$_EverythingNewsSource>
    implements _$$_EverythingNewsSourceCopyWith<$Res> {
  __$$_EverythingNewsSourceCopyWithImpl(_$_EverythingNewsSource _value,
      $Res Function(_$_EverythingNewsSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_EverythingNewsSource(
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
class _$_EverythingNewsSource implements _EverythingNewsSource {
  const _$_EverythingNewsSource({this.id, this.name});

  factory _$_EverythingNewsSource.fromJson(Map<String, dynamic> json) =>
      _$$_EverythingNewsSourceFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'EverythingNewsSource(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EverythingNewsSource &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EverythingNewsSourceCopyWith<_$_EverythingNewsSource> get copyWith =>
      __$$_EverythingNewsSourceCopyWithImpl<_$_EverythingNewsSource>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EverythingNewsSourceToJson(
      this,
    );
  }
}

abstract class _EverythingNewsSource implements EverythingNewsSource {
  const factory _EverythingNewsSource({final String? id, final String? name}) =
      _$_EverythingNewsSource;

  factory _EverythingNewsSource.fromJson(Map<String, dynamic> json) =
      _$_EverythingNewsSource.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_EverythingNewsSourceCopyWith<_$_EverythingNewsSource> get copyWith =>
      throw _privateConstructorUsedError;
}
