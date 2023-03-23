import 'package:dio/dio.dart';

import 'api.dart';

class DioService {
  static DioService? _instance;
  factory DioService() => _instance ??= DioService._();
  DioService._();

  // Options options = Options(
  //   baseUrl: "https://www.xx.com/api",
  //   connectTimeout: 5000,
  //   receiveTimeout: 3000,
  // );
  // Dio dio = new Dio(options);

  final _dio = Dio();

  Future<dynamic>? get() async {
    // TODO: network checking
    // TODO: BaseResponse model
    // TODO: Response cache manager
    // TODO: retry and timeout
    // TODO: Logger
    // TODO: showLoading

    try {
      final Response<dynamic> response = await _dio.get(apiUrl);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        //should return BaseResponse model with error message
      }
    } catch (e) {
      return null;
      // logger
    }

    return null;
  }
}
