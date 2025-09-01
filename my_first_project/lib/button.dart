import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 600, height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.pink, Colors.black, Colors.red]),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.black,
                  )
                ),
                child: Text("Sign Up Button", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white ) ,),
              ),
            ],
          ),
          SizedBox(height: 20,),

          CupertinoButton(

            color: Colors.red,
              child: Text("                       Login Button                     ",
                style: TextStyle(color: Colors.white, fontSize: 40),), onPressed: (){}),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){}, child: Text("Forget Password!", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),))
        ],
      ),
  
    );
  }
}
