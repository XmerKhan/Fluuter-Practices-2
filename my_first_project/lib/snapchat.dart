import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Snapchat extends StatefulWidget {
  const Snapchat({super.key});

  @override
  State<Snapchat> createState() => _SnapchatState();
}

class _SnapchatState extends State<Snapchat> {
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
                  borderRadius: BorderRadius.circular(15), color: Colors.white,border: Border.all(width: 1, color: Colors.black)
                ),
                child: Column(

                  children: [
                    SizedBox(height: 20,),
                    Row(

                      children: [
                        SizedBox(width: 20,),
                        Container(
                          width: 50, height: 50, color: Colors.white,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/avatar.jpeg"),
                          )
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 50, height: 50, color: Colors.white,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/5.png"),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 150, height: 50, color: Colors.transparent,
                          child: Text("Chat",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),),
                        ),
                        Container(
                          width: 50, height: 50, color: Colors.white,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/contact.png")
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 50, height: 50, color: Colors.white,
                          child: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/men.png"),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CupertinoButton(child: Text("All",), onPressed:(){} ),
                        CupertinoButton(child: Text("Unread"), onPressed: (){} ),
                        CupertinoButton(child: Text("Stories"), onPressed: (){} ),
                        CupertinoButton(child: Text("Streaks"), onPressed: (){} ),
                        CupertinoButton(child: Text("❤"), onPressed: (){} ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 418, height: 530, color: Colors.white,
                          child: ListView.builder(
                            itemCount: 8,
                              itemBuilder: (context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/avatarsnap.png"),
                              ),
                              title: Text("Umer Khan",style: TextStyle(fontSize: 18, color: Colors.black),),
                              subtitle: Text(" 🔳 New Snap... 107🔥",style: TextStyle(color: Colors.deepOrange)),
                              trailing: Image.asset("assets/images/camerasnap.png", width: 70, height: 70),
                            );
                          }),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10, height: 70,color: Colors.white,
                        ),
                        Container(
                          width: 80, height: 70,color: Colors.transparent,
                          child: Image.asset("assets/images/Map.png",width: 100,height: 100),
                        ),
                        Container(
                          width: 80,height: 70,color: Colors.transparent,
                          child: Image.asset("assets/images/msg.png",width: 100,height: 100),
                        ),
                        Container(
                          width: 80, height: 70,color: Colors.transparent,
                          child: Image.asset("assets/images/camerasnap.png",width: 100, height: 100),
                        ),
                        Container(
                          width: 80, height: 70,color: Colors.transparent,
                          child: Image.asset("assets/images/stories.png",width: 100, height: 100),
                        ),
                        Container(
                          width: 80, height: 70,color: Colors.transparent,
                          child: Image.asset("assets/images/spotlight.png",width: 100, height: 100),
                        ),
                        Container(
                          width: 8, height: 70,color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
