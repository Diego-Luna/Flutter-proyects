import 'package:disenos/src/screens/home_screen.dart';
import 'package:disenos/src/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:disenos/src/screens/basic_design.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_design',
      routes: {
        'basic_design': (_) => BasicDesesignScreen(),
        'scrpll_design': (_) => const ScrollScreen(),
        'home_design': (_) => const HomeScreen()
      },
    );
  }
}
