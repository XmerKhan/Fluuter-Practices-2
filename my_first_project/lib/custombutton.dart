import 'package:flutter/material.dart';
import 'package:second_practice/customdesign.dart';
class Custompractice extends StatefulWidget {
  const Custompractice({super.key});

  @override
  State<Custompractice> createState() => _CustompracticeState();
}

class _CustompracticeState extends State<Custompractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(text: "Hello People",borderradius: BorderRadius.circular(30),)
        ],
      ),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomContainer(text: "By People", borderradius: BorderRadius.circular(30))
        ],
      ),
      
        ])
    );
  }
}