import 'package:dongpo/views/add_store/add_store_page.dart';
import 'package:dongpo/views/app_shell.dart';
import 'package:dongpo/views/home/home_page.dart';
import 'package:dongpo/views/home/search_page.dart';
import 'package:dongpo/views/login/login_page.dart';
import 'package:dongpo/views/my/my_page.dart';
import 'package:dongpo/views/recommend/recommend_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final _rootNavKey = GlobalKey<NavigatorState>();
final _shellNavKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: "/login",
  navigatorKey: _rootNavKey,
  routes: [
    GoRoute(
      path: "/login",
      parentNavigatorKey: _rootNavKey,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: "/add",
      parentNavigatorKey: _rootNavKey,
      builder: (context, state) => const AddStorePage(),
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
            builder: (context, state) => const HomePage(),
            routes: [
              GoRoute(
                path: 'search',
                builder: (context, state) => const SearchPage(),
              ),
            ]),
        GoRoute(
          path: "/recommend",
          builder: (context, state) => const RecommendPage(),
        ),
        GoRoute(
          path: "/my",
          builder: (context, state) => const MyPage(),
        ),
      ],
    ),
  ],
);
