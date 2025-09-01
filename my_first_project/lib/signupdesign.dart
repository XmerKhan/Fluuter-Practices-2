import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/ecommercetask.dart';
import 'package:my_first_project/signupdesignregister.dart';

class SignupDesign extends StatefulWidget {
  const SignupDesign({super.key});

  @override
  State<SignupDesign> createState() => _SignupDesignState();
}

class _SignupDesignState extends State<SignupDesign> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: keys,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 360,
                    height: 720,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              width: 360,
                              height: 120,
                              color: Colors.white,
                              child: Text(
                                "   Let's Sign you in",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 24),
                              child: Container(
                                width: 300,
                                height: 60,
                                color: Colors.white,
                                child: Text(
                                  "Hello Food Lover, Welcome to Veggie Baba!",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: ("Email,phone & username"),
                              suffixIcon: Icon(Icons.account_circle_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Required Fields!";
                              } else if (value.contains('?') ||
                                  value.contains('&') ||
                                  value.contains('/') ||
                                  value.contains('%')) {
                                return "Don't Use Special Characters";
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: ("Password"),
                              suffixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            style: TextStyle(color: Colors.black, fontSize: 15),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Required Fields!";
                              } else if (value.length < 5) {
                                return "Please Enter Minimum 5 Characters...";
                              }
                              return null;
                            },
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.bottomRight,
                              width: 360,
                              height: 40,
                              color: Colors.white,
                              child: Text(
                                "Forget password?         ",
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: CupertinoButton(
                            color: const Color.fromARGB(255, 4, 121, 8),
                            child: Text(
                              "                                Sign in                                ",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              if (keys.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EcommerceTask(),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                        Text(
                          "------------------  or  -------------------",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 20),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 140,
                                height: 40,
                                color: Colors.white,
                                child: Text(
                                  "Don't have an Account ?",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              CupertinoButton(
                                child: Text(
                                  "Register Now",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => SignupDesignRegister(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
