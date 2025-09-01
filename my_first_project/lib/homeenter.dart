import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/button.dart';
class HomeEnter extends StatefulWidget {
  const HomeEnter({super.key});

  @override
  State<HomeEnter> createState() => _HomeEnterState();
}

class _HomeEnterState extends State<HomeEnter> {
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

            Row(
              children: [
                CupertinoButton(

                    color: Colors.red,
                    child: Text("  Login Button   ",
                      style: TextStyle(color: Colors.white, fontSize: 40),), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Button()));
                } ),
              ],
            )
          ],
        ),
    );

  }
}
