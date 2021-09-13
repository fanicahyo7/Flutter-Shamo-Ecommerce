import 'package:flutter/material.dart';
import 'package:flutter_shamo_ecommerce/pages/signin_page.dart';
import 'package:flutter_shamo_ecommerce/pages/signup_page.dart';
import 'package:flutter_shamo_ecommerce/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shamo Ecommerce',
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
      },
    );
  }
}
