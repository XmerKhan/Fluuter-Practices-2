import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/ecommercetask.dart';
import 'package:my_first_project/signupdesign.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupDesignRegister extends StatefulWidget {
  const SignupDesignRegister({super.key});

  @override
  State<SignupDesignRegister> createState() => _SignupDesignRegisterState();
}

class _SignupDesignRegisterState extends State<SignupDesignRegister> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final namecontroller = TextEditingController();
  final mobilenumbercontroller = TextEditingController();
  final businessnamecontroller = TextEditingController();
  final key = GlobalKey<FormState>();
  late String name;
  late String businessname;
  late int mobilenumber;
  late int password;
  late String email;
  @override
  void initState() {
    super.initState();
    registerData();
  }

  void registerData() async {
    SharedPreferences names = await SharedPreferences.getInstance();
    SharedPreferences business = await SharedPreferences.getInstance();
    SharedPreferences mobile = await SharedPreferences.getInstance();
    SharedPreferences emails = await SharedPreferences.getInstance();
    SharedPreferences passwords = await SharedPreferences.getInstance();
    name = names.getString("names")!;
    businessname = business.getString("businessname")!;
    mobilenumber = mobile.getInt("mobilenumber")!;
    email = emails.getString("emails")!;
    password = passwords.getInt("password")!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 360,
                    height: 700,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              width: 360,
                              height: 40,
                              color: Colors.white,
                              child: Text(
                                "   Let's Register Account",
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
                              padding: const EdgeInsets.only(
                                top: 6,
                                left: 24,
                                bottom: 6,
                              ),
                              child: Container(
                                width: 220,
                                height: 60,
                                color: Colors.white,
                                child: Text(
                                  "Hello User,Are You Ready For Shopping !",
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
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: namecontroller,
                            decoration: InputDecoration(
                              hintText: ("Name"),
                              suffixIcon: Icon(Icons.account_circle_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Required Fields!";
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: businessnamecontroller,
                            decoration: InputDecoration(
                              hintText: ("Business Name"),
                              suffixIcon: Icon(Icons.add_business_rounded),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Required Fields!";
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: mobilenumbercontroller,
                            decoration: InputDecoration(
                              hintText: ("Mobile Number"),
                              suffixIcon: Icon(Icons.phone),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Required Fields!";
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: ("Email Address"),
                              suffixIcon: Icon(Icons.mail_outline_rounded),
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
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: ("Password"),
                              suffixIcon: Icon(Icons.remove_red_eye),
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

                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: CupertinoButton(
                            color: const Color.fromARGB(255, 4, 121, 8),
                            child: Text(
                              "                                Sign Up                                ",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () async {
                              if (key.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EcommerceTask(),
                                  ),
                                );
                              }
                              SharedPreferences names =
                                  await SharedPreferences.getInstance();
                              SharedPreferences business =
                                  await SharedPreferences.getInstance();
                              SharedPreferences mobile =
                                  await SharedPreferences.getInstance();
                              SharedPreferences email =
                                  await SharedPreferences.getInstance();
                              SharedPreferences password =
                                  await SharedPreferences.getInstance();
                              names.setString(
                                "name",
                                namecontroller.toString(),
                              );
                              business.setString(
                                "businessname",
                                businessnamecontroller.toString(),
                              );
                              mobile.setString(
                                "mobilenumber",
                                mobilenumbercontroller.toString(),
                              );
                              email.setString(
                                "emails",
                                emailController.toString(),
                              );
                              password.setString(
                                "passwords",
                                passwordController.toString(),
                              );
                              print(names.getString("name"));
                              print(business.getString("businessname"));
                              print(mobile.getString("mobilenumber"));
                              print(email.getString("emails"));
                              print(password.getString("passwords"));
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
                                width: 200,
                                height: 20,
                                color: Colors.white,
                                child: Text(
                                  "Already Have An Account?",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              CupertinoButton(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
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
