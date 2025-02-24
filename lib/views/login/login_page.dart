import 'package:dongpo/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF33393F),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/login.png"),
            Gap(MediaQuery.of(context).size.height * 0.1),
            const Text(
              "동포 시작하기",
              style: TextStyle(
                fontFamily: "Chosun",
                color: AppColors.white,
                fontSize: 48,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gap(MediaQuery.of(context).size.height * 0.2),
            // 소셜 로그인 - 애플
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: InkWell(
                onTap: () {
                  context.go("/home");
                },
                child: Container(
                  width: double.infinity,
                  height: 42,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/login_apple.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            // 소셜 로그인 - 카카오
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: InkWell(
                onTap: () {
                  context.go("/home");
                },
                child: Container(
                  width: double.infinity,
                  height: 42,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEE500),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/login_kakao.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
