import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/enter_number');
    });

    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/splash.jpg', fit: BoxFit.cover),
      ),
    );
  }
}
