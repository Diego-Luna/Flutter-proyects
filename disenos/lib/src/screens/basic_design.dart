import 'package:flutter/material.dart';

class BasicDesesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage("assets/landscape.jpeg")),
          Title()
        ],
      )
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Sint aute elit nostrud", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Nostrud id magna in ", style: TextStyle( color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text("41"),
        ],
      ),
    );
  }
}
