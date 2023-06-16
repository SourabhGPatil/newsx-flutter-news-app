import 'package:flutter/material.dart';
import 'package:news_app_api/views/Start.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:news_app_api/views/Login.dart';
import 'package:news_app_api/views/SignUp.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:news_app_api/views/splash_screen.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NEWS-X',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: SplashScreen(),

      routes: <String,WidgetBuilder>{

        "Login" : (BuildContext context)=>Login(),
        "SignUp":(BuildContext context)=>SignUp(),
        "start":(BuildContext context)=>Start(),
      },


    );
  }
}



