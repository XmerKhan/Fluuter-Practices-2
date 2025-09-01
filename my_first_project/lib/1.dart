import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Umer extends StatefulWidget {
  String name;
  String cgpa;
  // ignore: non_constant_identifier_names
  String University;
  final Widget image;
  Umer({
    super.key,
    required this.name,
    required this.cgpa,
    // ignore: non_constant_identifier_names
    required this.University,
    required this.image,
  });

  @override
  State<Umer> createState() => _UmerState();
}

class _UmerState extends State<Umer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(widget.name),
          Text(widget.cgpa),
          Text(widget.University),
          Image.asset(widget.image.toString()),
        ],
      ),
    );
  }
}
