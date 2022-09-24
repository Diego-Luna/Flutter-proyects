import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Is Darkmode: '),
          Divider(),
          Text('Genero: '),
          Divider(),
          Text('Nombre de usuario: '),
          Divider(),
        ],
      )
    );
  }
}
