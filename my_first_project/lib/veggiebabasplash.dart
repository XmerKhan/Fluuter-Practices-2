import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_first_project/signupdesign.dart';

class VeggiebabaSplash extends StatefulWidget {
  const VeggiebabaSplash({super.key});
  @override
  State<VeggiebabaSplash> createState() => _VeggiebabaSplashState();
}

class _VeggiebabaSplashState extends State<VeggiebabaSplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignupDesign()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 94, 5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 720,
                color: Colors.transparent,
                child: Image.asset(
                  "assets/images/splashbg.png",
                  width: 400,
                  height: 720,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
