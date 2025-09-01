import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
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
                  height:200,
                  width: 300,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
               gradient: LinearGradient(colors: [
                Colors.brown, Colors.deepOrangeAccent,
                 Colors.deepPurple
               ],),
                    border: Border.all(
                      color: Colors.black, width: 10,
                    )
             ),
             child: Text("1", style: TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),),
                ),

                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors: [
                      Colors.black, Colors.deepOrange, Colors.pink
                    ],),
                    border: Border.all(
                      color: Colors.yellow, width: 20,
                    )

                  ),
                  child: Text("2", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black ),),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(colors: [Colors.white, Colors.cyan
                    ]),
                    border: Border.all(
                      color: Colors.black, width: 10,
                    )
                  ),
                  child: Text("3", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(colors: [Colors.black87, Colors.deepPurpleAccent]),
                    border: Border.all(
                      color: Colors.pink, width: 20,
                    )
                  ),
                  child: Text("4", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black),),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(colors: [Colors.black, Colors.deepOrange, Colors.blueAccent]),
                    border: Border.all(
                      color: Colors.black, width: 20,
                    )
                  ),
                  child: Text("5", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ],),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius:  BorderRadius.circular(45),
                    gradient: LinearGradient(colors: [Colors.indigo, Colors.deepPurple, Colors.white]),
                    border: Border.all(
                      color: Colors.brown, width: 10,
                    )
                  ),
                  child: Text("6", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 300,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(40),
                   gradient: LinearGradient(colors: [Colors.amberAccent, Colors.white70, Colors.deepOrangeAccent]),
                   border: Border.all(
                     color: Colors.black,
                     width: 15
                   )
                 ),
                  child: Text("7", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black),),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [Colors.amberAccent, Colors.brown, Colors.white]),
                  border: Border.all(
                    color: Colors.red, width: 20
                  )
                ),
                  child: Text("8", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black),),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [Colors.blue, Colors.black, Colors.white]),
                    border: Border.all(
                      color: Colors.white70, width: 30
                    )
                  ),
                  child: Text("9", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    gradient: LinearGradient(colors: [Colors.transparent, Colors.amber, Colors.transparent]),
                    border: Border.all(
                      color: Colors.black, width: 30
                    )
                  ),
                  child: Text("10", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black),),
                ),
              ],
            ),
            
          ],),


    );
  }
}
