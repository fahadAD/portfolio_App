import 'package:flutter/material.dart';
import 'package:protpolio1/main1.dart';

import 'home.dart';
import 'main2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Main1(),
     );
  }
}

