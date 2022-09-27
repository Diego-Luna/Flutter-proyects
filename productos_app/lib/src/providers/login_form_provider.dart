import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  String email = '';
  String password = '';

  bool isValidFrom() {
    print('$email - $password');
    return formKey.currentState?.validate() ?? false;
  }
}
