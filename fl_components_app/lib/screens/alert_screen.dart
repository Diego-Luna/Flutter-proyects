import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void  displayDialogIos(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return  CupertinoAlertDialog(
          title: const Text('titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Este es el contenidod e la alerta"),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel")
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Ok", style: TextStyle(color: Colors.blue),)
            ),
          ],
        );
      }
    );
  }

  void  displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder:  (contex) {
        return AlertDialog(
          elevation: 10,
          title: const Text('titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Este es el contenidod e la alerta"),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(contex),
              child: const Text("Cancel")
            )
          ],
        );
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text("Mostrar alerta",
            style: TextStyle(fontSize: 16,),
            )
          ),
          //onPressed: () => displayDialogAndroid(context),
          onPressed: () => Platform.isAndroid ? displayDialogAndroid(context): displayDialogIos(context),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }
}
