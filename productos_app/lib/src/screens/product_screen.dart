import 'package:flutter/material.dart';
import 'package:productos_app/src/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ProductImage()
              ],
            )
          ],
        ),
      )
    );
  }
}
