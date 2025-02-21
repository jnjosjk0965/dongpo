import 'package:dongpo/views/add_store/add_store_page.dart';
import 'package:dongpo/views/app_shell.dart';
import 'package:dongpo/views/home/home_page.dart';
import 'package:dongpo/views/my/my_page.dart';
import 'package:dongpo/views/recommend/recommend_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final _rootNavKey = GlobalKey<NavigatorState>();
final _shellNavKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: "/home",
  navigatorKey: _rootNavKey,
  routes: [
    GoRoute(
      path: "/add",
      parentNavigatorKey: _rootNavKey,
      builder: (context, state) => AddStorePage(),
    ),
    ShellRoute(
      navigatorKey: _shellNavKey,
      builder: (context, state, child) => AppShell(
        currentIndex: switch (state.uri.path) {
          String p when p.startsWith("/recommend") => 2,
          String p when p.startsWith("/my") => 3,
          _ => 0,
        },
        child: child,
      ),
      routes: [
        GoRoute(
          path: "/home",
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: "/recommend",
          builder: (context, state) => RecommendPage(),
        ),
        GoRoute(
          path: "/my",
          builder: (context, state) => MyPage(),
        ),
      ],
    ),
  ],
);
