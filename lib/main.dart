import 'package:flutter/material.dart';
import 'package:flutter1/pages/home_page.dart';
import 'package:flutter1/pages/splash_screen.dart';
import 'package:flutter1/pages/login_page.dart';
import 'package:flutter1/pages/product_page1.dart';
import 'package:flutter1/pages/signup_page.dart';
import 'package:flutter1/utils/routs.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.splashcreenRoute,
      routes: {
        "/": (context) => SplashScreen(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.splashcreenRoute: (context) => SplashScreen(),
        MyRoutes.signupRoute: (context) => SignupPage(),
        MyRoutes.productpage1Route: (context) => ProductPage1(),
      },
    );
  }
}
