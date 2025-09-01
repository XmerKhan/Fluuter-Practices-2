import 'package:flutter/material.dart';

class Gridviewtask extends StatefulWidget {
  const Gridviewtask({super.key});
  @override
  State<Gridviewtask> createState() => _GridviewtaskState();
}

class _GridviewtaskState extends State<Gridviewtask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Container(
                  width: 360,
                  height: 50,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.transparent,
                        child: Image.asset(
                          "assets/images/stories.png",
                          width: 50,
                          height: 50,
                        ),
                      ),
                      SizedBox(width: 260),
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.transparent,
                        child: Image.asset(
                          "assets/images/stories.png",
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              width: 360,
              height: 160,
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(width: 300, height: 140, color: Colors.black),
              ),
            ),
          ),
          Row(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(width: 50, height: 50, color: Colors.amber),
                  Container(width: 50, height: 50, color: Colors.black),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 330,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black12,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 50,
                        color: Colors.transparent,
                        child: Image.asset("assets/images/searchbar.png"),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: ("Search")),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Container(
                        width: 50,
                        color: Colors.transparent,
                        child: Image.asset("assets/images/searchbar.png"),
                      ),
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
