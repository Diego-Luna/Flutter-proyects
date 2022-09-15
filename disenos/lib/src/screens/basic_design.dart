import 'package:flutter/material.dart';

class BasicDesesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage("assets/landscape.jpeg"))
      ),
    );
  }
}
