import 'package:flutter/material.dart';

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
            children: [
              TextFormField(
                autofocus: false,
                initialValue: "Diego",
                textCapitalization: TextCapitalization.words,
                onChanged: (value){
                  print(value);
                },
                validator: (value){
                    if (value == null) return  'Este campo es requerido';
                    return value.length < 3 ? "Minumos de 3 letras" : "";
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: "Nombre del usuario",
                  labelText: "Nombre",
                  helperText: "Solo letras",
                  // counterText: "3 Caracteres",
                  // prefixIcon: Icon(Icons.verified_user),
                  suffixIcon: Icon(Icons.group),
                  icon: Icon(Icons.admin_panel_settings),
                  focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10)
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}