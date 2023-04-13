import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(380, 820),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppNavigator.getRoute,
            navigatorKey: AppNavigator.navigatorKey,
            initialRoute: Routes.splashScreen,
            title: 'travlo',
            home: child,
          ),
        );
      },
    );
  }
}
