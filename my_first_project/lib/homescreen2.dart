import 'package:flutter/material.dart';
class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                width: 500, height: 400,
                child: Text("You have Successfully Complete this Process! ", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),
              )
            ],
          ),
          
          
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.network("https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art"
                "-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=", height: 50,),
          )
          
          
        ],
      ),
    );
  }
}
