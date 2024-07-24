import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:task/Screens/Reg_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement((context), MaterialPageRoute(builder: (context)=>UserForm()));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(bottom: 108,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png',
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                height: 200,
                width: 250),
            SizedBox(height: 20,),
            SpinKitThreeBounce(
              color: Colors.deepPurpleAccent,
              size: 35,

            )],
        ),
      ),
    );
  }
}



