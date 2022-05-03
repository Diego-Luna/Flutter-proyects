import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const["Megaman", "Metal Gear", "Super Smash", "Final Fantasy", "Xenoblade Chronicles"];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("ListView 1")
            ),
        ),
        body: ListView(
          children: [
            ...options.map((game) => ListTile(
              leading: const Icon(Icons.access_alarm),
              trailing: const Icon(Icons.arrow_forward_ios),
              title: Text(game),
            )).toList()
          ],
        )
      )
    );
  }
}