import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'network_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  final options = BaseOptions(
    baseUrl: "https://ysw123.xyz",
    responseType: ResponseType.json,
    headers: {
      "Content-Type": "application/json",
    },
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  );
  return Dio(options);
}
