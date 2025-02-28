import 'package:dongpo/core/api_key.dart';
import 'package:dongpo/core/log.dart';
import 'package:dongpo/core/router.dart';
import 'package:dongpo/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Kakao SDK 초기화
  KakaoSdk.init(
    nativeAppKey: ApiKey.kakaoNativeAppKey,
  );
  // 지도 초기화
  await NaverMapSdk.instance.initialize(
    clientId: ApiKey.naverApiKey,
    onAuthFailed: (e) => Log.e("naver map auth failed $e"),
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '동포',
      theme: dongpoDefaultTheme,
      routerConfig: router,
      themeAnimationStyle: AnimationStyle(
        curve: Curves.easeInCirc,
        duration: const Duration(
          milliseconds: 350,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
