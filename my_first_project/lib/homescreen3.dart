import 'package:flutter/material.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("How Are You?",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.brown),),
      ),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
         Container(
           height: 200,
           width: 300,
           color: Colors.blue,
           
         ),

         Container(
           height: 200,
           width: 300,
           color: Colors.brown,
         ),
         Container(
           height: 200,
           width: 300,
           color: Colors.amberAccent,
         )
       ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 300,
                color: Colors.black,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.purpleAccent,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.black,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 300,
                color: Colors.blueGrey,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.orange,

                ),



            ],
          ),


          ],)

    );
  }
}
