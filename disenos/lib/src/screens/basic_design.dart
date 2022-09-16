import 'package:flutter/material.dart';

class BasicDesesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // imagen
        const Image(image: AssetImage("assets/landscape.jpeg")),

        // Title
        const Title(),

        // button section
        const ButtonSection(),

        // Description
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
                "Pariatur proident et ipsum exercitation consectetur et minim cupidatat sit occaecat. Eu laboris sunt nisi ex in dolore mollit cupidatat amet non tempor. Enim proident labore sit enim officia amet irure minim ut. Non cillum mollit ea tempor consectetur et nostrud. Qui exercitation duis non id.")),
      ],
    ));
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
              Text("Sint aute elit nostrud",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Nostrud id magna in ",
                  style: TextStyle(color: Colors.black45)),
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

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.map_sharp, text: "Call"),
          CustomButton(icon: Icons.route, text: "Route"),
          CustomButton(icon: Icons.share, text: "Share"),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(text, style: const TextStyle(color: Colors.blue))
      ],
    );
  }
}
