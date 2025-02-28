import 'package:dio/dio.dart';
import 'package:dongpo/core/log.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'network_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  final options = BaseOptions(
    baseUrl: "https://ysw123.xyz/api",
    responseType: ResponseType.json,
    headers: {
      "Content-Type": "application/json",
    },
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    validateStatus: (status) => status != null, // status null 아닐때
  );
  final dio = Dio(options);
  dio.interceptors.add(DioInterceptor());
  return dio;
}

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Log.d("path: ${options.uri}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final status = response.statusCode!;
    final isSuccess = status >= 200 && status < 300;
    Log.d("status code: $status");
    Log.d("data: ${response.data}");
    if (!isSuccess) {
      if (status == 401) {
        // 토큰 재발급
      }
      throw DioException.badResponse(
        statusCode: status,
        requestOptions: response.requestOptions,
        response: response,
      );
    }
    super.onResponse(response, handler);
  }
}
