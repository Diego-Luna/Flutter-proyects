import 'package:app_qr_reader/src/providers/db_provider.dart';
import 'package:app_qr_reader/src/models/scan_model.dart';
import 'package:flutter/material.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final ScanModel scan = ModalRoute.of(context)!.settings.arguments;
    final ScanModel scan =
        ModalRoute.of(context)?.settings.arguments as ScanModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa'),
      ),
      body: Center(
        child: Text(scan.valor),
      ),
    );
  }
}
