import 'package:fl_components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget{

  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 20,
      shadowColor: AppTheme.prymary.withOpacity(0.2),
      child: Column(
        children: [
          // Image(
          const FadeInImage(
            image: NetworkImage("http://cdn.eso.org/images/screen/millour-01-cc.jpg"),
            placeholder: AssetImage('assets/gifs/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, left: 10, bottom:  10),
            child: const Text("Un hermoso paisaje")
          ),
        ],
      ),
    );
  }
}