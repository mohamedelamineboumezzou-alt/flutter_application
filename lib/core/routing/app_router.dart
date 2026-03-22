import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_socode/features/signin/presentation/EngineerDashboard.dart';

import 'package:mobile_socode/features/signin/presentation/login_screen.dart';

class AppRouter {
  AppRouter._();
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: "/LoginScreen",
    errorPageBuilder: (context, state) {
      return _pageAnimatedRoute(const Scaffold(body: Center(child: Text(''))));
    },
    routes: <GoRoute>[
      GoRoute(
        name: 'LoginScreen',
        path: '/LoginScreen',
        pageBuilder: (context, state) => _pageAnimatedRoute(LoginScreen()
          
        ),
      ),
      GoRoute(
        name: 'EnginnerDashbord',
        path: '/EnginerDashboard',
        pageBuilder: (context, state) => _pageAnimatedRoute(EngineerDashboard()
          
        ),)
      

    ],
  );

  static Page<void> _pageAnimatedRoute(Widget page) {
    return CustomTransitionPage(
      child: page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }

  static Page<void> _pageSimpleRoute(Widget page) {
    return CustomTransitionPage(
      child: page,
      transitionsBuilder: (_, anim, __, child) =>
          FadeTransition(opacity: anim, child: child),
    );
  }
}
