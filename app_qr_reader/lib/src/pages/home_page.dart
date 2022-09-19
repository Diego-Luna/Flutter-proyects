import 'package:app_qr_reader/src/pages/direcciones_page.dart';
import 'package:app_qr_reader/src/pages/mapas_page.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_navigatorbar.dart';
import '../widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Historia'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever))
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: const CustomNavigatorBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Cambiar para mostrat la pantalla
    final currentIndex = 0;

    switch (currentIndex) {
      case 0:
        return MapasPage();
      case 1:
        return DireccionesPage();
      default:
        return MapasPage();
    }
  }
}
