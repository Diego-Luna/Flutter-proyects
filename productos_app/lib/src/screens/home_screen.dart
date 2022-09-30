import 'package:flutter/material.dart';
import 'package:productos_app/src/screens/screen.dart';
import 'package:productos_app/src/services/services.dart';
import 'package:productos_app/src/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsService = Provider.of<ProductsService>(context);

    if (productsService.isLoading) return const LoadingScreen();

    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      // ListView.builder, creara los widgets de forma peresosa
      body: ListView.builder(
        itemCount: productsService.products.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          child: ProductCard(
            product: productsService.products[index],
          ),
          onTap: () {
            productsService.selectedProduct =
                productsService.products[index].copy();
            print(productsService.selectedProduct);
            Navigator.pushNamed(context, 'product');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
