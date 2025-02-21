import 'package:dongpo/views/app_shell.dart';
import 'package:dongpo/views/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final _rootNavKey = GlobalKey<NavigatorState>();
final _shellNavKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: "/home",
  navigatorKey: _rootNavKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavKey,
      builder: (context, state, child) => AppShell(
        currentIndex: 0,
        child: child,
      ),
      routes: [
        GoRoute(
          path: "/home",
          builder: (context, state) => HomePage(),
        ),
      ],
    ),
  ],
);
