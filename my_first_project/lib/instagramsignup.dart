import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/instagramform.dart';

class InstagramSignUp extends StatefulWidget {
  const InstagramSignUp({super.key});

  @override
  State<InstagramSignUp> createState() => _InstagramSignUpState();
}

class _InstagramSignUpState extends State<InstagramSignUp> {
  final emailController = TextEditingController();
  final keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: keys,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  width: 360,
                  height: 650,

                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 360,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 360,
                            height: 60,
                            alignment: Alignment.center,
                            child: Text(
                              "Instagram",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 360,
                            height: 80,
                            alignment: Alignment.center,
                            child: Text(
                              "Sign up to see photos and videos from your friends.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CupertinoButton(
                            color: Colors.blue,
                            child: Text(
                              "     log in with Facebook   ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 360,
                            height: 50,
                            color: Colors.black,
                            child: Text(
                              "---------------------- OR -----------------------",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 50,
                          top: 10,
                          bottom: 5,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.text,

                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.mail),
                            hintText: "Enter Email Address",
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                          style: TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter required fields";
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 50,
                          top: 10,
                          bottom: 5,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.account_circle_sharp),
                            hintText: "Enter Username",
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                          style: TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter required fields";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 50,
                          top: 10,
                          bottom: 5,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.lock),
                            hintText: "Enter Password",
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                          style: TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter required fields";
                            } else if (value.length < 6) {
                              return "Password must be atleast 6 character";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 50,
                          top: 10,
                          bottom: 5,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.lock),
                            hintText: "Confirm Password",
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                          style: TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter correct confirm password";
                            } else if (value.length < 6) {
                              return "Password must be atleast 6 characters";
                            }
                            return null;
                          },
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Click on The SignUp Button...",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: CupertinoButton(
                              color: Colors.blue,
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                if (keys.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => InstagramForm(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(children: [SizedBox(height: 30)]),
                      Row(
                        children: [
                          Container(
                            width: 400,
                            height: 20,
                            color: Colors.black,
                            child: Text(
                              "  Have an account ?",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CupertinoButton(
                            color: Colors.black,
                            child: Text(
                              "                 Sign In               ",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              if (keys.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => InstagramForm(),
                                  ),
                                );
                              }
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InstagramForm(),
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
      ),
    );
  }
}
