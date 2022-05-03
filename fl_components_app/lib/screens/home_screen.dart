import 'package:flutter/material.dart';
import 'package:fl_components_app/router/app_routes.dart';

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
          title: Text(AppRoutes.menuOptions[index].name),
          leading: Icon(AppRoutes.menuOptions[index].icon),
          onTap: () {
            //Opcion larga pero nos permite tener mas control en la animaciones
            //final route = MaterialPageRoute(
            //  builder:(context) => const ListView1Screen()
            //);
            //Navigator.push(context, route);

            //Navigator.pushNamed(context, 'card');
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: AppRoutes.menuOptions.length,
      )
    );
  }
}