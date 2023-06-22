// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_weather_response_model.freezed.dart';
part 'news_weather_response_model.g.dart';

@freezed
class NewsWeatherResponseModel with _$NewsWeatherResponseModel {
  const factory NewsWeatherResponseModel({
    Location? location,
    Current? current,
  }) = _NewsWeatherResponseModel;

  factory NewsWeatherResponseModel.fromJson(Map<String, Object?> json) =>
      _$NewsWeatherResponseModelFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    @JsonKey(name: 'tz_id') String? tzId,
    @JsonKey(name: 'localtime_epoch') int? localtimeEpoch,
    String? localTime,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}

@freezed
class Current with _$Current {
  const factory Current({
    @JsonKey(name: 'last_updated_epoch') int? lastUpdatedEpoch,
    @JsonKey(name: 'last_updated') String? lastUpdated,
    @JsonKey(name: 'temp_c') double? tempC,
    @JsonKey(name: 'temp_f') double? tempF,
    @JsonKey(name: 'is_day') int? isDay,
    Condition? condition,
    @JsonKey(name: 'wind_mph') double? windMph,
    @JsonKey(name: 'wind_kph') double? windKph,
    @JsonKey(name: 'wind_degree') int? windDegree,
    @JsonKey(name: 'wind_dir') String? windDir,
    @JsonKey(name: 'pressure_mb') double? pressureMb,
    @JsonKey(name: 'pressure_in') double? pressureIn,
    @JsonKey(name: 'precip_mm') double? precipMm,
    @JsonKey(name: 'precip_in') double? precipIn,
    int? humidity,
    int? cloud,
    @JsonKey(name: 'feelslike_c') double? feelslikeC,
    @JsonKey(name: 'feelslike_f') double? feelslikeF,
    @JsonKey(name: 'vis_km') double? visKm,
    @JsonKey(name: 'vis_miles') double? visMiles,
    double? uv,
    @JsonKey(name: 'gust_mph') double? gustMph,
    @JsonKey(name: 'gust_kph') double? gustKph,
  }) = _Current;

  factory Current.fromJson(Map<String, Object?> json) =>
      _$CurrentFromJson(json);
}

@freezed
class Condition with _$Condition {
  const Condition._(); // if add a custom function inside the class, have to define a single private constructor
  const factory Condition({
    String? text,
    String? icon,
    int? code,
  }) = _Condition;

  String? iconPath(String? icon) {
    if (icon == null) return null;
    String path = icon;

    while (true) {
      if (path.startsWith('/')) {
        path = icon.replaceFirst('/', '');
      } else {
        break;
      }
    }
    return path;
  }

  factory Condition.fromJson(Map<String, Object?> json) =>
      _$ConditionFromJson(json);
}
