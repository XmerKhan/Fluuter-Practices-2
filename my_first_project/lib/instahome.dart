import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/instagramsignup.dart';
class InstaHome extends StatefulWidget {
  const InstaHome({super.key});

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
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
                  width: 450, height: 750,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: CupertinoButton(alignment: Alignment.topCenter,
                        child: Image.asset(
                          "assets/images/10.png", width: 80, height: 80,),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => InstagramSignUp()));
                        }),
                  ),

                ),

              ],
            ),
          ],
        )

    );
  }
}
