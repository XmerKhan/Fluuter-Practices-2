import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/homescreen.dart';

class CV extends StatefulWidget {
  const CV({super.key});

  @override
  State<CV> createState() => _CVState();
}

class _CVState extends State<CV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Portfolio Application",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 668,
                color: Colors.white70,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.blue,
                            backgroundImage: AssetImage(
                              "assets/images/umerpic.jpg",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.topCenter,
                                    width: 200,
                                    height: 40,
                                    color: Colors.transparent,
                                    child: Text(
                                      "Umer Khan",
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 60,
                                    color: Colors.transparent,
                                    child: Text(
                                      "Designation:\n  Flutter Developer (Android/IOS)",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 360,
                      height: 380,
                      color: Colors.white,

                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                Icon(Icons.school_rounded),

                                Container(
                                  alignment: Alignment.center,
                                  width: 315,
                                  height: 40,
                                  color: Colors.transparent,
                                  child: Text(
                                    "Bachelor in (Computer Science) ",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                Icon(Icons.home, color: Colors.black),

                                Container(
                                  alignment: Alignment.center,
                                  width: 315,
                                  height: 40,
                                  color: Colors.transparent,
                                  child: Text(
                                    "    From (PMAS-Arid University RWL) ",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                Icon(Icons.grade),

                                Container(
                                  alignment: Alignment.center,
                                  width: 270,
                                  height: 40,
                                  color: Colors.transparent,
                                  child: Text(
                                    "My CGPA Level is (3.6 / 4.0)",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                Icon(Icons.call),

                                Container(
                                  alignment: Alignment.center,
                                  width: 305,
                                  height: 40,
                                  color: Colors.transparent,
                                  child: Text(
                                    "Mobile Number: 0313-6928904 ",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                Icon(Icons.location_on_outlined),

                                Container(
                                  alignment: Alignment.center,
                                  width: 315,
                                  height: 40,
                                  color: Colors.transparent,
                                  child: Text(
                                    "TBZ Colony Sahiwal, Punjab (PK) ",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                Icon(Icons.mail),

                                Container(
                                  alignment: Alignment.center,
                                  width: 270,
                                  height: 40,
                                  color: Colors.transparent,
                                  child: Text(
                                    "Xmerkhan4299@gmail.com",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CupertinoButton(
                        color: Colors.amberAccent,
                        child: Text("Thank You !"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                      ),
                    ),

                    Image.network(
                      "https://brandlogos.net/wp-content/uploads/2021/12/flutter-brandlogo.net_.png",
                      width: 250,
                      height: 95,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
