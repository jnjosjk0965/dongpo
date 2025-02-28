import 'package:dongpo/core/log.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage.g.dart';

@riverpod
SecureStorage secureStorage(Ref ref) {
  final storage = SecureStorage();
  return storage;
}

class SecureStorage {
  final storage = const FlutterSecureStorage();

  //  리프레시 토큰 저장
  Future<void> saveRefreshToken(String refreshToken) async {
    try {
      await storage.write(key: "refresh_token", value: refreshToken);
    } catch (e) {
      Log.e("refreshToken 저장 실패: $e");
    }
  }

  // 리프레시 토큰 불러오기
  Future<String?> readRefreshToken() async {
    try {
      final refreshToken = await storage.read(key: "refresh_token");
      return refreshToken;
    } catch (e) {
      Log.e("refreshToken 불러오기 실패: $e");
      return null;
    }
  }

  // 엑세스 토큰 저장
  Future<void> saveAccessToken(String accessToken) async {
    try {
      await storage.write(key: "access_token", value: accessToken);
    } catch (e) {
      Log.e("accessToken 저장 실패: $e");
    }
  }

  // 엑세스 토큰 불러오기
  Future<String?> readAccessToken() async {
    try {
      final accessToken = await storage.read(key: "access_token");
      return accessToken;
    } catch (e) {
      Log.e("accessToken 불러오기 실패: $e");
      return null;
    }
  }
}
