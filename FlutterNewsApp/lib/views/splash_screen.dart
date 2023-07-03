import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'homepage.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Set a timer to navigate to the HomePage after 5 seconds
    Timer(Duration(seconds: 5),
        ()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder:
            (context) =>
                HomePage()
        )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFFFF800B),Color(0xFFCE1010),]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "images/newsX_logo.png",
                  height: 300.0,
                  width: 300.0,
                ),
                Text(
                  "NEWS MOBILE APPLICATION\nUSING THE NEWS API",
                  textAlign:TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),

                Text(
                  "\n\nDeveloped with Flutter and Dart by\n Shreyas Deshpande - 2JR18CS072\n Sourabh Patil - 2JR18CS079\n Veer Jadimath - 2JR18CS091\n Vikyath Kamat - 2JR18CS093",
                  textAlign:TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 18.0,
                  ),
                ),

                Text(
                  "\n\n\n\n\n\n\n\n © Computer Science and Engineering Department,\nJain College of Engineering and Research, Udyambag, Belgaum, Karnataka",
                  textAlign:TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),

            CircularProgressIndicator(
              valueColor:  AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
