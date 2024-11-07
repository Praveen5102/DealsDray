import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/number_verification.dart';
import 'screens/verify_otp.dart';
import 'screens/sign_up_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(DealDrayApp());
}

class DealDrayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DealDray',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/enter_number': (context) => EnterNumberScreen(),
        '/verify_otp': (context) => VerifyOTPScreen(),
        '/sign_up': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
