import 'package:flutter/material.dart';
import 'package:my_first_project/1.dart';

class ImagePassing extends StatefulWidget {
  const ImagePassing({super.key});

  @override
  State<ImagePassing> createState() => _ImagePassingState();
}

class _ImagePassingState extends State<ImagePassing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 130),
        child: InkWell(
          child: Image.asset("assets/images/apl.png"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => Umer(
                      name: "Hello",
                      cgpa: "3.54",
                      University: "Arid Univeristy RWL",
                      image: Image.asset("assets/images/apl.png"),
                    ),
              ),
            );
          },
        ),
      ),
    );
  }
}
