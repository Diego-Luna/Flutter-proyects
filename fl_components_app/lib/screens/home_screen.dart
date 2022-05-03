import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes de Flutter"),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: const Text('Ruta'),
          leading: const Icon(Icons.access_alarm),
          onTap: () {
            //Opcion larga pero nos permite tener mas control en la animaciones
            //final route = MaterialPageRoute(
            //  builder:(context) => const ListView1Screen()
            //);
            //Navigator.push(context, route);
            Navigator.pushNamed(context, 'card');
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 10,
      )
    );
  }
}