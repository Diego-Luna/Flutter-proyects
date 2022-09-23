import 'package:app_qr_reader/src/providers/db_provider.dart';
import 'package:app_qr_reader/src/models/scan_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/material.dart';
import 'dart:async';

class MapaPage extends StatefulWidget {
  const MapaPage({Key? key}) : super(key: key);

  @override
  State<MapaPage> createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {
  Completer<GoogleMapController> _controller = Completer();
  MapType maptype = MapType.normal;

  @override
  Widget build(BuildContext context) {
    // final ScanModel scan = ModalRoute.of(context)!.settings.arguments;
    final ScanModel scan =
        ModalRoute.of(context)?.settings.arguments as ScanModel;

    final CameraPosition puntoInicial =
        CameraPosition(target: scan.getLantLng(), zoom: 17, tilt: 50);

    // Marcadores
    Set<Marker> markers = new Set<Marker>();
    markers.add(new Marker(
        markerId: MarkerId('geo-location'), position: scan.getLantLng()));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa'),
        actions: [
          IconButton(
              onPressed: () async {
                final GoogleMapController controller = await _controller.future;
                controller.animateCamera(CameraUpdate.newCameraPosition(
                    CameraPosition(
                        target: scan.getLantLng(), zoom: 17, tilt: 50)));
              },
              icon: Icon(Icons.location_on))
        ],
      ),
      body: GoogleMap(
        myLocationButtonEnabled: false,
        mapType: maptype,
        initialCameraPosition: puntoInicial,
        markers: markers,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.layers),
        onPressed: () {
          if (maptype == MapType.normal) {
            maptype = MapType.satellite;
          } else {
            maptype = MapType.normal;
          }

          setState(() {});
        },
      ),
    );
  }
}
