import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Packages extends StatefulWidget {
  const Packages({super.key});

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CupertinoButton(
                  color: Colors.deepOrange,
                  child: Text("Show Message"), onPressed: (){

    //Fluttertoast.showToast(msg: "Login Successfully!",);

              } ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CupertinoButton(
                  color: Colors.yellow,
                  child: Text("Loading"), onPressed: (){
                    
              } ),
            ],
          )
        ],
      )

    );
  }
}

