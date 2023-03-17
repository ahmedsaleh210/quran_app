import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/styles/theme.dart';
import 'package:quran_app/view/splash/splash_screen.dart';

class QuranApp extends StatelessWidget {
  const QuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child){
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Quran App',
          theme: themeData(),
          home: const SplashScreen(),
        );
      },
    );
  }
}
