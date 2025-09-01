import 'package:flutter/material.dart';

class TaskProvider extends StatefulWidget {
  const TaskProvider({super.key});

  @override
  State<TaskProvider> createState() => _TaskProviderState();
}

class _TaskProviderState extends State<TaskProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.green, title: Text("Veggie Baba")),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 340,
                height: 200,
                color: Colors.transparent,
                child: Text("Add to Cart"),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 340,
                height: 200,
                color: Colors.amber,
                child: Image.asset("assets/images/menu 1.jpg"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
