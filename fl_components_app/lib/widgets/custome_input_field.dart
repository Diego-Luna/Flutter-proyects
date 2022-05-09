import 'package:flutter/material.dart';

class CustomIputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final String? initialValue;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomIputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.initialValue,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: initialValue,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value){
        print(value);
      },
      validator: (value){
          if (value == null) return  'Este campo es requerido';
          return value.length < 3 ? "Minumos de 3 letras" : "";
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // counterText: "3 Caracteres",
        // prefixIcon: Icon(Icons.verified_user),
        suffixIcon: suffixIcon == null? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.green,
        //   ),
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10)
        //   )
        // ),
      ),
    );
  }
}