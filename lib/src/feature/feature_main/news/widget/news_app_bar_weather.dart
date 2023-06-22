import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/news_weather_response_model.dart';
import '../service/weather_service.dart';

class NewsAppBarWeather extends ConsumerWidget {
  const NewsAppBarWeather({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(weatherInformationFutureProvider);

    return data.when(
      data: (NewsWeatherResponseModel? data) {
        // log(data.toString());
        // final current = data?.current;
        final lastUpdated = data?.current?.lastUpdated;
        final tempC = data?.current?.tempC;
        // final condition = data?.current?.condition;
        // log(iconPath(condition?.icon).toString());
        return Column(
          children: [
            if (tempC != null) Text('$tempC°C'),
            if (lastUpdated != null) Text('最後更新: $lastUpdated'),
          ],
        );
      },
      error: (error, stackTrace) {
        log(error.toString());
        return const Text('error');
      },
      loading: () {
        return const Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 48.0),
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
