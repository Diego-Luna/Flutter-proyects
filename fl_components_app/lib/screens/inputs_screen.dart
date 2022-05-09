import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y Forms"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomIputField( labelText: "nombre", hintText: "Nombre del usuario"),
              SizedBox(height: 30),
              CustomIputField( labelText: "Apellido", hintText: "Apellido del usuario"),
              SizedBox(height: 30),
              CustomIputField( labelText: "Correo", hintText: "Correo del usuario", keyboardType: TextInputType.emailAddress,),
              SizedBox(height: 30),
              CustomIputField( labelText: "Contrasena", hintText: "Contrasena del usuario", obscureText: true),
              SizedBox(height: 30),
            ],
          ),
        ),
      )
    );
  }
}
