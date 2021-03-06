import 'package:flutter/material.dart';
import 'package:protfolio_app/banner/banner.dart';
import 'package:protfolio_app/splashScreen.dart';

import 'homePage/homePage.dart';
import 'protofolio/protofolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/banner': (context) => const BannerPage(),
        '/home': (context) => const HomePage(),
        '/protofolio': (context) => const Protofolio()
      },
    );
  }
}
