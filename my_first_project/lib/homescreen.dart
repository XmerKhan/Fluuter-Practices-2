import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 300, left: 23),
        child: Text(
          "Thanks For Read my Portfolio \n                 😊🎉😊",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
    );
  }
}
