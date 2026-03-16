import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_socode/core/routing/app_router.dart';
import 'package:mobile_socode/core/theme/app_theme.dart';
import 'package:mobile_socode/core/theme/sizes.dart';

class SetramApp extends StatefulWidget {
  const SetramApp({super.key});

  @override
  State<SetramApp> createState() => _SetramAppState();
}

class _SetramAppState extends State<SetramApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        ScreenUtil.init(context);
        return MaterialApp.router(
          title: 'Setram Mobile',
          debugShowCheckedModeBanner: true,
          darkTheme: AppTheme.darkThemeData,
          theme: AppTheme.lightThemeData,
          themeMode: ThemeMode.light,
          routeInformationParser: AppRouter.router.routeInformationParser,
          routerDelegate: AppRouter.router.routerDelegate,
          routeInformationProvider: AppRouter.router.routeInformationProvider,
          builder: (context, routerWidget) {
            AppSize.setSizes(context);
            return MediaQuery(
              data: MediaQuery.of(context),
              child: ScrollConfiguration(
                behavior: const CupertinoScrollBehavior(),
                child: routerWidget ?? const Scaffold(),
              ),
            );
          },
        );
      },
    );
  }
}
