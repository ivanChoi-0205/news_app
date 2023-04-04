import 'package:dio/dio.dart';

class BaseApiService {
  static BaseApiService? _instance;
  factory BaseApiService() => _instance ??= BaseApiService._();
  BaseApiService._();

  // Options options = Options(
  //   baseUrl: "https://www.xx.com/api",
  //   connectTimeout: 5000,
  //   receiveTimeout: 3000,
  // );
  // Dio dio = new Dio(options);

  final _dio = Dio();

  Future<dynamic>? get({
    required String apiUrl,
  }) async {
    // TODO: network checking
    // TODO: BaseResponse model
    // TODO: Response cache manager
    // TODO: retry and timeout
    // TODO: Logger
    // TODO: showLoading
    // TODO: header
    try {
      final Response response = await _dio.get(
        apiUrl,
        // queryParameters:,
        // options:,
      );
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
