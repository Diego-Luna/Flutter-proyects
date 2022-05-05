import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const["Megaman", "Metal Gear", "Super Smash", "Final Fantasy", "Xenoblade Chronicles"];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Componentes de Flutter"),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder:  (context, index) => ListTile(
              leading: const Icon(Icons.access_alarm,
                color: Colors.red,),
              trailing: const Icon(Icons.arrow_forward_ios,
                color: Colors.red,),
              title: Text(options[index]),
              onTap: () {
                //final game = options[index];
                //print(game);
              },
            ),
          separatorBuilder: (_, __) => const Divider(),
        )
      );
  }
}