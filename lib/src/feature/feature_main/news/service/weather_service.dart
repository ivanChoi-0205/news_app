import 'dart:developer' as dev;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/src/service/api/base_api_service.dart';

import '../model/news_weather_response_model.dart';
import '../util/news_api.dart';

class WeatherService {
  static WeatherService? _instance;
  factory WeatherService() => _instance ??= WeatherService._();
  WeatherService._();

  final BaseApiService apiService = BaseApiService();

  Future<NewsWeatherResponseModel?> fetchWeatherInformation() async {
    dev.log('getWeatherInformation');
    try {
      final url = getWeatherApiUrl();
      final jsonData = await apiService.get(
        apiUrl: url,
      );
      final result = NewsWeatherResponseModel.fromJson(jsonData);
      return result;
    } catch (e) {
      // dev.log(e.toString());
      return null;
    }
  }
}

final Provider weatherServiceProvider = Provider<WeatherService>(
  (ref) {
    return WeatherService();
  },
);

final FutureProvider<NewsWeatherResponseModel?>
    weatherInformationFutureProvider = FutureProvider(
  (ref) {
    return ref.read(weatherServiceProvider).fetchWeatherInformation();
  },
);
