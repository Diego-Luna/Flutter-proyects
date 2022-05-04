import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget{
  
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const[
          // Image(
          FadeInImage(
            image: NetworkImage("http://cdn.eso.org/images/screen/millour-01-cc.jpg"),
            placeholder: AssetImage('assets/gifs/jar-loading.gif'),
          )
        ],
      ),
    );
  }
}