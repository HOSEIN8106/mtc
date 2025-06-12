
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:mtc/api/api_endpoint.dart';

class ApiService extends GetxService {
  late Dio _dio;


  @override
  void onInit() {
    super.onInit();
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoint.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    // اضافه کردن اینترسپتور برای لاگ یا توکن در صورت نیاز
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        print('--> ${options.method} ${options.uri}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        print('<-- ${response.statusCode} ${response.data}');
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        print('Error: ${e.message}');
        return handler.next(e);
      },
    ));
  }

  Future<Response?> get(String endpoint, {Map<String, dynamic>? query}) async {
    try {
      final response = await _dio.get(endpoint, queryParameters: query);
      return response;
    } catch (e) {
      handleError(e);
      return null;
    }
  }

  Future<Response?> post(String endpoint, dynamic data) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response;
    } catch (e) {
      handleError(e);
      return null;
    }
  }

  Future<Response?> put(String endpoint, dynamic data) async {
    try {
      final response = await _dio.put(endpoint, data: data);
      return response;
    } catch (e) {
      handleError(e);
      return null;
    }
  }

  Future<Response?> delete(String endpoint) async {
    try {
      final response = await _dio.delete(endpoint);
      return response;
    } catch (e) {
      handleError(e);
      return null;
    }
  }

  void handleError(dynamic error) {
    if (error is DioException) {
      print("Dio error: ${error.response?.data}");
      // می‌تونی اینجا بر اساس status code رفتار سفارشی بسازی
    } else {
      print("Unknown error: $error");
    }
  }
}
