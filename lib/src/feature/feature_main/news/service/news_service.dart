import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/src/feature/feature_main/news/util/news_api.dart';

import '../../../../service/api/base_api_service.dart';
import '../model/everything_news_list_model.dart';

class NewsService {
  static NewsService? _instance;
  factory NewsService() => _instance ??= NewsService._();
  NewsService._();

  final BaseApiService apiService = BaseApiService();

  Future<EverythingNewsListModel?> fetchEverythingNewsList() async {
    log('fetchEverythingNewsList');
    try {
      final String url = getEverythingNewsApiUrl();

      final jsonData = await apiService.get(
        apiUrl: url,
      );

      final data = EverythingNewsListModel.fromJson(jsonData);

      return data;
    } catch (e) {
      log(e.toString());

      return null;
    }
  }
}

final Provider newsServiceProvider = Provider<NewsService>((ref) {
  return NewsService();
});

final newsEverythingListFutureProvider =
    FutureProvider(<EverythingNewsListModel>(ref) {
  return ref.read(newsServiceProvider).fetchEverythingNewsList();
});

// riverpod for service
