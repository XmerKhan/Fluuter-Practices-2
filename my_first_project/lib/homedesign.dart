import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/signupdesign.dart';
import 'package:my_first_project/signupdesignregister.dart';

class HomeDesign extends StatefulWidget {
  const HomeDesign({super.key});

  @override
  State<HomeDesign> createState() => _HomeDesignState();
}

class _HomeDesignState extends State<HomeDesign> {
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
                alignment: Alignment.topCenter,
                width: 370,
                height: 720,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 100, bottom: 10),
                          child: Container(
                            color: Colors.white,
                            width: 420,
                            height: 250,
                            child: Image.asset(
                              'assets/images/designpic.png',
                              width: 300,
                              height: 300,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          width: 420,
                          height: 50,
                          color: Colors.white,
                          child: Text(
                            "Team work all",
                            style: TextStyle(color: Colors.black, fontSize: 40),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 300,
                            height: 100,
                            color: Colors.white,
                            child: Text(
                              "Convillas vitae, dictum justo, iaculis id.Cras a augue netus semper various facilsis id.",
                              style: TextStyle(fontSize: 17),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: CupertinoButton(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            child: Text(
                              '     Sign in     ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupDesign(),
                                ),
                              );
                            },
                          ),
                        ),
                        CupertinoButton(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          child: Text(
                            "     Register    ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupDesignRegister(),
                              ),
                            );
                          },
                        ),
                      ],
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
