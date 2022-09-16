import 'package:disenos/src/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:disenos/src/screens/basic_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scrpll_design',
      routes: {
        'basic_design': (_) => BasicDesesignScreen(),
        'scrpll_design': (_) => ScrollScreen()
      },
    );
  }
}
