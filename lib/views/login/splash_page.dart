import 'package:dongpo/view_model/login/login_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) async => await ref.read(loginVmProvider.notifier).login());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF33393F),
      body: Consumer(builder: (context, ref, child) {
        final loginState = ref.watch(loginVmProvider).loginState;
        return loginState.when(
          data: (isLogin) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (!context.mounted) return;
              context.go(isLogin ? "/home" : "/login");
            });
            return Column(
              children: [
                Image.asset("assets/images/login.png"),
                const Spacer(),
                const Center(
                  child: CircularProgressIndicator(),
                ),
                const Spacer(),
              ],
            );
          },
          loading: () => Column(
            children: [
              Image.asset("assets/images/login.png"),
              const Spacer(),
              const Center(
                child: CircularProgressIndicator(),
              ),
              const Spacer(),
            ],
          ),
          error: (error, stackTrace) {
            return const Center(
              child: Text("오류발생"),
            );
          },
        );
      }),
    );
  }
}
