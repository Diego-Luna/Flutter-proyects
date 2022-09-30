import 'package:flutter/material.dart';
import 'package:productos_app/src/models/models.dart';

class ProductFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  Product product;

  ProductFormProvider(this.product);

  bool idValidForm() {
    return formKey.currentState?.validate() ?? false;
  }
}
