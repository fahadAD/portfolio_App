import 'package:flutter/material.dart';
class Fahad extends StatelessWidget {
  const Fahad({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(child: Container(color: Colors.yellow,
    child: Hero(tag: "add", child: Icon(Icons.camera_alt,size: 200,)),
    ));
  }
}

