import 'package:flutter/material.dart';
import 'package:responsive/screen/home_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeSreen(),
    );
  }
}

class Cat {
  String name;
  String img;

  Cat({required this.name, required this.img});
}
