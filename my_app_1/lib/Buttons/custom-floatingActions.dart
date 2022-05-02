import 'package:flutter/material.dart';

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function diminishFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.diminishFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => diminishFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.restart_alt_sharp),
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}