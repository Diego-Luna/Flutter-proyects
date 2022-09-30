import 'package:flutter/material.dart';
import 'package:productos_app/src/models/models.dart';

class ProductFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  Product product;

  ProductFormProvider(this.product);

  updateAvailability(bool value) {
    print(value);
    this.product.available = value;
    notifyListeners();
  }

  bool idValidForm() {
    return formKey.currentState?.validate() ?? false;
  }
}
