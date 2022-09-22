import 'package:app_qr_reader/src/providers/scan_list_provider.dart';
import 'package:app_qr_reader/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: () async {
        // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        //     '#3D8BEF', 'Cancelar', false, ScanMode.QR);
        final barcodeScanRes = 'geo:19.428554281649767,-99.20668869066994';

        if (barcodeScanRes == -1) {
          return;
        }

        // final barcodeScanRes = 'https://moonmakers.org/';
        final scanListProvider =
            Provider.of<ScanListProvider>(context, listen: false);

        final nuevoScan = await scanListProvider.nuevoScan(barcodeScanRes);

        launchUrl_http(context, nuevoScan);
      },
      child: const Icon(Icons.filter_center_focus),
    );
  }
}
