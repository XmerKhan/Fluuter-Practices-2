import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedPreference extends StatefulWidget {
  const SharedPreference({super.key});

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}
class _SharedPreferenceState extends State<SharedPreference> {
late String name;
late double cgpa;
@override
void initState()
{
  super.initState();
      myData();
}
void myData() async
{
  SharedPreferences value = await SharedPreferences.getInstance();
  //names = value.getString("name")!;
  cgpa = value.getDouble("cgpa")!;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoButton( color: Colors.red, child: Text("Data Save",style: TextStyle(color: Colors.white),), onPressed: ()
     async {
        SharedPreferences value = await SharedPreferences.getInstance();
        value.setString("names", "Umer");
        value.setDouble("cgpa", 3.5);
        print(value.getString("name"));
        print(value.getDouble("cgpa"));
      } ),
    );

  }
}