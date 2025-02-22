import 'package:flutter/material.dart';

final ThemeData dongpoDefaultTheme = ThemeData(
  fontFamily: "Pretendard",
  primaryColor: AppColors.primary,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.grey[400],
    enableFeedback: false, // 선택시 효과음
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    surfaceTintColor: Colors.white,
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    border: OutlineInputBorder(
      // 기본 적용 스타일
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: AppColors.grey[100]!,
        width: 1.0,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      // 입력 가능 적용 스타일
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: AppColors.grey[200]!,
        width: 1.0,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.primary,
        width: 1.0,
      ),
    ),
  ),
  dialogTheme: DialogTheme(),
);

class AppColors extends Color {
  AppColors(super.value);

  static const Color scaffoldBackgroundColor = Color(0xfff2f4f6);
  static const Color primary = Color(0xffF15A2B);
  static const Color secondary = Color(0xfffff9f3);
  static const Color white = Colors.white;
  static const Color bg = Color(0xfff2f2f7);
  static const Color newBg = Color(0xfff2f4f6);
  static const int _grayPrimaryValue = 0xff848487;
  static const MaterialColor grey = MaterialColor(
    _grayPrimaryValue,
    <int, Color>{
      50: Color(0xffffebee),
      100: Color(0xffe5e5ea),
      200: Color(0xffd4d4d4),
      300: Color(0xffaeaeb2),
      400: Color(0xff8e8e93),
      500: Color(_grayPrimaryValue),
      600: Color(0xff646464),
      700: Color(0xff4a4a4a),
      800: Color(0xff303030),
      900: Color(0xff242424),
    },
  );
}
