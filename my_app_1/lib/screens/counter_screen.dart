//import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_app_1/Buttons/custom-floatingActions.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  var number = 0;

  void  increase(){
    setState(() {
      number++;
    });
  }
  void  diminish(){
    setState(() {
      number--;
    });
  }
  void  reset(){
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                const Text("Clicks counter", style: fontSize30,),
                Text("$number", style: fontSize30,),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        diminishFn: diminish,
        resetFn: reset,
      ),
    );
  }
}
