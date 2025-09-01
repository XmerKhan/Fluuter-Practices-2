import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_first_project/homepage.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6),(){

      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage() ));
    } );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Container(
                    width: 200, height: 500, color: Colors.black,
                  ),
                  Container(width: 200,height: 400, color: Colors.blue)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
