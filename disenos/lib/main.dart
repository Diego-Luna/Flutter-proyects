import 'package:flutter/material.dart';

<<<<<<< HEAD
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: TempHomeScreen());
  }
}

class TempHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('Hello World'), Text('Hello World')],
    );
=======
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Material App',
        home: Center(
          child: Text("Hola mundo"),
        ));
>>>>>>> 372017c1b6d943de46dd4949a1f935e7c54c8d5d
  }
}
