import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatefulWidget {
  final Widget child;
  final int currentIndex;

  const AppShell({
    super.key,
    required this.child,
    required this.currentIndex,
  });

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  void _onItemTapped(int index, BuildContext context) {
    if (index == 0) {
      GoRouter.of(context).go("/home");
    } else if (index == 1) {
      GoRouter.of(context).push("/add");
    } else if (index == 2) {
      GoRouter.of(context).go("/recommend");
    } else if (index == 3) {
      GoRouter.of(context).go("/my");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.currentIndex,
        onTap: (int index) => _onItemTapped(index, context),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "홈",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.create),
            label: "가게 등록",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: "추천",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "마이페이지",
          ),
        ],
      ),
    );
  }
}
