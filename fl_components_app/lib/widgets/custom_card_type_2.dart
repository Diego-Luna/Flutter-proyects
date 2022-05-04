import 'package:fl_components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget{

  final String imgUrl;
  final String? name;

  const CustomCardType2({
    Key? key,
    required this.imgUrl,
    this.name
  }) : super(key: key);

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
          FadeInImage(
            image: NetworkImage(imgUrl),
            placeholder: const AssetImage('assets/gifs/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, left: 10, bottom:  10),
              child: Text(name ?? 'no Title'),
            ),
        ],
      ),
    );
  }
}