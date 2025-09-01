import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/homedesign.dart';

class DataPassing extends StatefulWidget {
  const DataPassing({super.key});

  @override
  State<DataPassing> createState() => _DataPassingState();
}

class _DataPassingState extends State<DataPassing> {
  String ab = "Hello Umer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(ab),
          CupertinoButton(
            child: Text("Data Send"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeDesign()),
              );
            },
          ),
        ],
      ),
    );
  }
}
