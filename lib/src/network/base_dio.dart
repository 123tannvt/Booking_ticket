import 'package:dio/dio.dart';

class BaseDio {
  static Future<Dio> setup() async {
    final options = BaseOptions(
      baseUrl: "http",
      connectTimeout: const Duration(seconds: 3),
      receiveTimeout: const Duration(seconds: 3),
      validateStatus: (status) {
        return true;
      },
    );
    final dio = Dio(options);
    return dio;
  }
}
