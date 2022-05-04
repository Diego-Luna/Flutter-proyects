import '../widgets/widgets.dart';

import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical:  10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(name: "imagen 1", imgUrl: "http://cdn.eso.org/images/screen/millour-01-cc.jpg"),
          SizedBox(height: 10),
          CustomCardType2(imgUrl: "http://cdn.eso.org/images/screen/millour-02-cc.jpg"),
          SizedBox(height: 10),
          CustomCardType2(imgUrl: "http://cdn.eso.org/images/screen/millour-03-cc.jpg"),
          SizedBox(height: 10),
        ],
      )
    );
  }
}
