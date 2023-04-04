import 'package:dio/dio.dart';

class BaseResponse {
  final bool success;
  dynamic data;
  String? message; // request相關的消息

  BaseResponse({
    required this.success,
    this.data,
    this.message,
  });

  factory BaseResponse.fromResponse(Response response) {
    if (response.statusCode == 200) {
      return BaseResponse(
        success: true,
        data: response.data,
        message: '',
      );
    } else {
      return BaseResponse(
        success: false,
        data: null,
        message: response.statusMessage,
      );
    }
  }
}
