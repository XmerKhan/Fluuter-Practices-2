import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackProject extends StatefulWidget {
  const StackProject({super.key});

  @override
  State<StackProject> createState() => _StackProjectState();
}

class _StackProjectState extends State<StackProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 360,
            height: 300,
            color: Colors.black,
            child: Image.network(
              "https://www.transparentpng.com/download/sign-up-button/QF3NrG-download-sign-up-button-png.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: 360,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
                color: Colors.lightGreenAccent,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: ("Enter Name:"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: ("Enter Mobile No:"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: ("Enter Password:"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CupertinoButton(
                        color: Colors.amber,
                        child: Text("Sign Up"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
