import 'package:flutter/material.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.amber),),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
    );
  }
}
