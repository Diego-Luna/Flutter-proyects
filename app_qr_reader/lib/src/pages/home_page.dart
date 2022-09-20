import 'package:app_qr_reader/src/pages/direcciones_page.dart';
import 'package:app_qr_reader/src/pages/mapas_page.dart';
import 'package:app_qr_reader/src/providers/db_provider.dart';
import 'package:app_qr_reader/src/providers/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    // obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    // Cambiar para mostrat la pantalla
    final currentIndex = uiProvider.selectedMenuOpt;

    // TODO: Temporal leer la base de datos
    DBProvider.db.database;
    final temScan = new ScanModel(valor: 'https://moonmakers.org/');
    DBProvider.db.nuevoScan(temScan);

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
