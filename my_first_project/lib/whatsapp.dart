import 'package:flutter/material.dart';
class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
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
                width: 420, height: 750,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),color: Colors.black
                ),
                child: Column(

                  children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 200, height: 60, color: Colors.transparent,
                      child: Text(" WhatsApp", style: TextStyle(color: Colors.white,fontSize: 30,),textAlign: TextAlign.left),
                    ),
                    SizedBox(width: 80, height: 60),
                    Container(
                      width: 50,height: 60, color: Colors.black,
                      child: Image.asset("assets/images/2.png", width: 50, height: 60,),
                    ),
                    Container(
                      width: 60,height: 60, color: Colors.transparent,
                      child: Image.asset("assets/images/4.png", width: 50, height: 60,),
                    ),
                  ],
                ),
                    SizedBox( height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 380,height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40), color: Colors.white10,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 50, height: 30,color: Colors.transparent,
                                child: Image.asset("assets/images/5.png", width: 50, height: 30,),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 300, height: 50, color: Colors.transparent,
                                child: Text("Ask Meta AI or Search", style: TextStyle(color: Colors.blueGrey,fontSize: 17),textAlign: TextAlign.justify,),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                    SizedBox( height: 20),
                    Container(
                      width: 400, height: 600, color: Colors.transparent,
                      child: ListView.builder(
                        itemCount: 9,
                        itemBuilder: (context, index){

                          return ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/umerpic.jpg"),

                            ),
                            title: Text("User Message!", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),),
                            subtitle: Text("Umer is typing...😊😊😊", style: TextStyle(color: Colors.blueGrey)),
                            trailing: Text("12:30 am", style: TextStyle(fontSize: 15),),

                          );

                        },),
                    )
                  ]
                ),
              ),
            ],

          ),


        ],
      ),
    );
  }
}
