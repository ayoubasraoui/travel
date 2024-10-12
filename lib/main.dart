import 'package:flutter/material.dart';
import 'package:flutter2/screens/loginScreen.dart';
import 'package:flutter2/screens/registerScreen.dart';
import 'package:flutter2/screens/splashScreen.dart';
import 'package:flutter2/screens/swipeScreen.dart';
import 'package:flutter2/services/profile.dart';
import 'package:flutter2/services/filter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TravelMatch',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/swipe': (context) => SwiperScreen(),
        '/profile':(context) => Profile(),
        '/filter':(context)=> FilterScreen(),
      },
    ) ;
  }
}
