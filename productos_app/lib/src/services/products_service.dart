import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:productos_app/src/models/product.dart';
import 'package:http/http.dart' as http;

class ProductsService extends ChangeNotifier {
  final String _baseUrl =
      '';
  final List<Product> products = [];
  late Product selectedProduct;
  File? newPictureFile;
  bool isLoading = true;
  bool isSaving = false;

  final storage = new FlutterSecureStorage();

  ProductsService() {
    this.loadProducts();
  }

  Future<List<Product>> loadProducts() async {
    this.isLoading = true;
    notifyListeners();

    final url = Uri.https(_baseUrl, 'products.json', {
      'auth': await storage.read(key: 'token') ?? ''
    });
    final resp = await http.get(url);

    final Map<String, dynamic> productsMap = json.decode(resp.body);

    productsMap.forEach((key, value) {
      final tempProduct = Product.fromMap(value);
      tempProduct.id = key;
      this.products.add(tempProduct);
    });

    this.isLoading = false;
    notifyListeners();
    return this.products;
  }

  Future saveOrCreateProduct(Product product) async {
    isSaving = true;
    notifyListeners();

    if (product.id == null) {
      // es neseario crear
      await createProduct(product);
    } else {
      // actualizar
      await updateProduct(product);
    }

    isSaving = false;
    notifyListeners();
  }

  Future<String> createProduct(Product product) async {
    final url = Uri.https(_baseUrl, 'products.json', {
      'auth': await storage.read(key: 'token') ?? ''
    });
    final resp = await http.post(url, body: product.toJson());

    final decodedData = json.decode(resp.body);

    // actualisar el listadi de productos
    product.id = decodedData['name'];
    products.add(product);

    return product.id!;
  }

  Future<String> updateProduct(Product product) async {
    final url = Uri.https(_baseUrl, 'products/${product.id}.json', {
      'auth': await storage.read(key: 'token') ?? ''
    });
    final resp = await http.put(url, body: product.toJson());

    final decodedData = resp.body;
    print(decodedData);

    // actualisar el listadi de productos
    final index =
        this.products.indexWhere((element) => element.id == product.id);
    products[index] = product;

    return product.id!;
  }

  void updateSelectedProductImage(String path) {
    selectedProduct.picture = path;
    newPictureFile = File.fromUri(Uri(path: path));
    notifyListeners();
  }

  Future<String?> uploadImage() async {
    if (newPictureFile == null) return null;

    isSaving = true;
    notifyListeners();
    final url = Uri.parse(
        '');

    final imageUploadRequest = http.MultipartRequest('POST', url);
    final file =
        await http.MultipartFile.fromPath('file', newPictureFile!.path);

    imageUploadRequest.files.add(file);

    final streamResponse = await imageUploadRequest.send();
    final res = await http.Response.fromStream(streamResponse);

    if (res.statusCode != 200 && res.statusCode != 201) {
      print('Algo salio mal');
      print(res.body);
      return null;
    }

    newPictureFile = null;

    final decodedData = json.decode(res.body);
    return decodedData['secure_url'];
  }
}
