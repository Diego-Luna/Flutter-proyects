import 'package:app_qr_reader/src/providers/db_provider.dart';
import 'package:flutter/material.dart';

class ScanListProvider extends ChangeNotifier {
  List<ScanModel> scans = [];
  String tipoSelecionado = 'http';

  nuevoScan(String valor) async {
    final nuevoScan = ScanModel(valor: valor);
    final id = await DBProvider.db.nuevoScan(nuevoScan);

    // asignando el ID de la base de datos al modelo
    nuevoScan.id = id;

    if (tipoSelecionado == nuevoScan.tipo) {
      scans.add(nuevoScan);
      notifyListeners();
    }
  }

  cargarScans() async {
    final scansDb = await DBProvider.db.getScansTodos();
    scans = [...?scansDb];
    notifyListeners();
  }

  cargarScansPorTipo(String tipo) async {
    final scansDb = await DBProvider.db.getScansPorTipo(tipo);
    scans = [...?scansDb];
    tipoSelecionado = tipo;
    notifyListeners();
  }

  borrarScansPorId(int id) async {
    await DBProvider.db.deleteScan(id);
    // cargarScansPorTipo(tipoSelecionado);
  }

  borrarTodo() async {
    await DBProvider.db.deleteAllScan();
    scans = [];
    notifyListeners();
  }
}
