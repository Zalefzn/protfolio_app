import 'package:flutter/material.dart';
import 'package:protfolio_app/utilities/theme/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.pushNamed(context, '/banner'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bColor1,
      body: Center(
        child: Container(
          height: 225,
          width: 225,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/logo.png'),
              )),
        ),
      ),
    );
  }
}
