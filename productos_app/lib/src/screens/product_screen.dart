import 'package:flutter/material.dart';
import 'package:productos_app/src/providers/product_form_provider.dart';
import 'package:productos_app/src/services/services.dart';
import 'package:productos_app/src/ui/input_decorations.dart';
import 'package:productos_app/src/widgets/widgets.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsService = Provider.of<ProductsService>(context);

    return ChangeNotifierProvider(
      create: (_) => ProductFormProvider(productsService.selectedProduct),
      child: _ProdutScreenBody(productsService: productsService),
    );
  }
}

class _ProdutScreenBody extends StatelessWidget {
  const _ProdutScreenBody({
    Key? key,
    required this.productsService,
  }) : super(key: key);

  final ProductsService productsService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ProductImage(
                  url: productsService.selectedProduct.picture,
                ),
                Positioned(
                    top: 60,
                    left: 20,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_sharp,
                          size: 40, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                    )),
                Positioned(
                    top: 60,
                    right: 20,
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt_outlined,
                          size: 40, color: Colors.white),
                      onPressed: () {},
                    )),
              ],
            ),
            _ProductForm(),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save_outlined),
        onPressed: () {},
      ),
    );
  }
}

class _ProductForm extends StatelessWidget {
  const _ProductForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productForm = Provider.of<ProductFormProvider>(context);
    final product = productForm.product;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        // height: 200,
        width: double.infinity,
        decoration: _buildBoxDecoration(),
        child: Form(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: product.name,
              onChanged: (value) => product.name = value,
              validator: (value) {
                if (value == null || value.length < 1) {
                  return "El nombre es obligatorio";
                }
              },
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'Nombre del producto', labelText: 'Nombre'),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              initialValue: '${product.price}',
              onChanged: (value) {
                if (double.tryParse(value) == null) {
                  product.price = 0.0;
                } else {
                  product.price = double.parse(value);
                }
              },
              keyboardType: TextInputType.number,
              decoration: InputDecorations.authInputDecoration(
                  hintText: '\$150', labelText: 'Precio'),
            ),
            SizedBox(
              height: 30,
            ),
            SwitchListTile.adaptive(
                value: true,
                title: Text('Disponible'),
                activeColor: Colors.amber,
                onChanged: (value) {}),
            SizedBox(
              height: 30,
            ),
          ],
        )),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: Offset(0, 5),
                blurRadius: 5)
          ]);
}
