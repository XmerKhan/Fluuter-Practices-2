import 'package:flutter/material.dart';

class ListOverlay extends StatefulWidget {
  const ListOverlay({super.key});

  @override
  State<ListOverlay> createState() => _ListOverlayState();
}

class _ListOverlayState extends State<ListOverlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(),
            title: Text("Muhammad Hassan"),
            subtitle: Text("How are you"),
            trailing: Icon(Icons.arrow_forward),
          );
        },
      ),
    );
  }
}
