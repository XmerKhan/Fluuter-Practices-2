import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EcommerceTask extends StatefulWidget {
  const EcommerceTask({super.key});

  @override
  State<EcommerceTask> createState() => _EcommerceTaskState();
}

class _EcommerceTaskState extends State<EcommerceTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 23),
            child: Row(
              children: [
                Container(
                  width: 360,
                  height: 50,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        color: Colors.transparent,
                        child: Image.asset(
                          "assets/images/logo app.jpg",
                          width: 30,
                          height: 0,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 270,
                        height: 40,
                        color: Colors.transparent,
                        child: Text(
                          "  Veggie Baba",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 2, 94, 5),
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        color: Colors.transparent,
                        child: Image.asset("assets/images/notiapp.jpg"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Container(
                  width: 360,
                  height: 50,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 3,
                      bottom: 5,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 180,
                  color: Colors.transparent,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 2),
                      Container(
                        width: 350,
                        height: 180,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: Image.asset("assets/images/card 1.png"),
                      ),
                      SizedBox(width: 30),
                      Container(
                        width: 350,
                        height: 180,
                        color: Colors.white,
                        child: Image.asset("assets/images/card 2.png"),
                      ),
                      SizedBox(width: 30),
                      Container(
                        width: 350,
                        height: 180,
                        color: Colors.white,
                        child: Image.asset("assets/images/card 4.png"),
                      ),
                      SizedBox(width: 30),
                      Container(
                        width: 350,
                        height: 180,
                        color: Colors.white,
                        child: Image.asset("assets/images/card 3.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  width: 360,
                  height: 90,
                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        color: Colors.white,
                        child: Image.asset("assets/images/menu 1.jpg"),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 90,
                        height: 90,
                        color: Colors.white,
                        child: Image.asset("assets/images/menu 5.jpg"),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 90,
                        height: 90,
                        color: Colors.white,
                        child: Image.asset("assets/images/menu 2.jpg"),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 90,
                        height: 90,
                        color: Colors.white,
                        child: Image.asset("assets/images/menu 6.jpg"),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 90,
                        height: 90,
                        color: Colors.white,
                        child: Image.asset("assets/images/menu 3.jpg"),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 90,
                        height: 90,
                        color: Colors.white,
                        child: Image.asset("assets/images/menu 4.jpg"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 360,
                height: 50,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 180,
                      height: 80,
                      color: Colors.transparent,
                      child: Text(
                        " Special For You",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 2, 94, 5),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(width: 80),
                    Container(
                      width: 100,
                      height: 80,
                      color: Colors.transparent,
                      child: CupertinoButton(
                        child: Text(
                          "View All",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 350,
                height: 200,
                color: Colors.transparent,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 11,
                    mainAxisSpacing: 3,
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      height: 320,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 110),
                            child: Container(
                              alignment: Alignment.center,
                              width: 200,
                              height: 40,
                              color: const Color.fromARGB(255, 2, 94, 5),
                              child: Text(
                                " Add to Cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 110,
                            color: Colors.white,
                            child: Image.asset(
                              "assets/images/product.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 360,
                height: 66,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 66,
                      color: Colors.white,
                      child: Icon(Icons.home),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 80,
                      height: 66,
                      color: Colors.white,
                      child: Icon(Icons.favorite_rounded),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 80,
                      height: 66,
                      color: Colors.white,
                      child: Icon(Icons.shopping_cart),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 80,
                      height: 66,
                      color: Colors.white,
                      child: Icon(Icons.person),
                    ),
                    SizedBox(width: 10),
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
