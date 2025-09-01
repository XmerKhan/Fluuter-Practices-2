import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/homescreen2.dart';
import 'package:my_first_project/instagramsignup.dart';

class InstagramForm extends StatefulWidget {
  const InstagramForm({super.key});

  @override
  State<InstagramForm> createState() => _InstagramFormState();
}

class _InstagramFormState extends State<InstagramForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 750, width: 700,
          decoration: BoxDecoration(
            gradient:LinearGradient(colors: [Colors.blue, Colors.pink, Colors.deepOrangeAccent, Colors.orangeAccent])
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 660, width: 400,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                           SizedBox(width: 400, height: 60,),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 400, height: 100, color: Colors.black,
                              child: Text("Instagram", style: TextStyle(fontSize:50, fontWeight: FontWeight.bold,
                                  color: Colors.white), textAlign: TextAlign.center,),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(height: 20, width: 400,),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5,left: 30,right: 30),
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.account_circle),
                              border: OutlineInputBorder(),
                              hintText: "Phone number, Username, Email-address", hintStyle: TextStyle(color: Colors.white70,fontSize: 13)
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5,left: 30,right: 30),
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                            hintText: "Password", hintStyle: TextStyle(color: Colors.white70,fontSize: 13),
                            suffixIcon: Icon(Icons.lock),

                            border: OutlineInputBorder(

                            )
                          ),
                          style: TextStyle(color: Colors.white),),
                        ),
                        Row(
                          children: [
                            SizedBox(height: 3, width: 400,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 350, height: 50,
                                alignment: Alignment.centerRight,
                                child: Text(" Forgotten password?", style: TextStyle(color: Colors.blue, fontSize: 13,),)
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(height: 7, width: 400,),
                          ],
                        ),

                        CupertinoButton(
                            color: Colors.blue,
                            child: Text("                                    Log in                                      ",
                              style: TextStyle(color: Colors.white, fontSize: 15,),), onPressed: (){

                              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen2()));

                        } ),
                        Row(
                          children: [
                            SizedBox(height: 15, width: 400,),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                width: 400, height: 20,
                                alignment: Alignment.center,
                                child: Text(" ---------------- OR -----------------", style: TextStyle(color: Colors.white, fontSize: 15,),)
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(height: 10, width: 400,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 400, height: 50,
                                alignment: Alignment.center,
                                child: Text(" Log in with Facebook", style: TextStyle(color: Colors.blue, fontSize: 15,),)
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(height: 30, width: 400,),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                width: 400, height: 20,
                                alignment: Alignment.center,
                                child: Text(" -----------------------------------------------------------------------------------------------",
                                  style: TextStyle(color: Colors.white, fontSize: 15,),)
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                width: 200, height: 50,
                                alignment: Alignment.center,
                                child: Text("Don't have an account?", style: TextStyle(color: Colors.white, fontSize: 15,),textAlign: TextAlign.left,)

                            ),

                                CupertinoButton(color: Colors.black,child: Text("    Sign Up   "
                                    , style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)), onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> InstagramSignUp()));
                                })

                          ],
                        ),
                      ],
                    )

                  )
                ],
              )
            ],
          ),
        )

      ],
    ),
  ],
),
    );
  }
}
