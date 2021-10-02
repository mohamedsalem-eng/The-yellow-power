import 'package:flutter/material.dart';
import 'package:the_yellow_power/Providers/AuthWidgetBuilder.dart';
import 'package:the_yellow_power/splash_screen.dart';


void main() {
  runApp(
    MyApp(),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthWidgetBuilder(
      builder:(context)=> MaterialApp(

        debugShowCheckedModeBanner: false,
        home: SplashScreen(


        ),
      ),
    );
  }
}

