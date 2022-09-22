import 'package:app_qr_reader/src/providers/db_provider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrl_http(BuildContext context, ScanModel scan) async {
  if (scan.tipo == 'http') {
    final Uri _url = Uri.parse(scan.valor);

    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  } else{
    Navigator.pushNamed(context, "mapa", arguments: scan);
    print('geo');
  }
}
