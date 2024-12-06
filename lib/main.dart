import 'package:assignment_2/home_%20screen.dart';
import 'package:assignment_2/login_screen.dart';
import 'package:assignment_2/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute:LoginScreen.routeName ,
      routes: {
        LoginScreen.routeName:(context)=>LoginScreen(),
        SplashScreen.routeName:(context)=>SplashScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),

      },
    );
  }
}
