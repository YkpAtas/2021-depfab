import 'dart:ffi';

import 'package:login/anaSayfaComponents/components/drawler.dart';
import 'package:login/sonDepremler/arguments/EarthquakeDetail.dart';
import 'package:login/sonDepremler/helpers/map_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:login/sonDepremler/models/Earthquake.dart';

class EarthquakeOnMap extends StatefulWidget {
  final Earthquake earthquake;
  final Double enlem;
  final Double boylam;
  EarthquakeOnMap({this.enlem, this.boylam, this.earthquake});
  @override
  _EarthquakeOnMapState createState() => _EarthquakeOnMapState();
}

class _EarthquakeOnMapState extends State<EarthquakeOnMap> {
  @override
  Widget build(BuildContext context) {
    final EarthquakeDetail args = ModalRoute.of(context).settings.arguments;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "${args.place}",
          ),
          centerTitle: true,
        ),
        drawer: Menu(),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
              target: LatLng(args.latitude, args.longitude), zoom: 8),
          mapType: MapType.terrain,
          markers: {
            Marker(
              markerId: MarkerId(args.place),
              position: LatLng(args.latitude, args.longitude),
              infoWindow: InfoWindow(
                  title: args.place,
                  snippet:
                      'Şiddet: ${args.siddet}, Derinlik: ${args.depth},Tarih:${args.tarih}',
                  onTap: () {
                    showDetailsOnBrowser(args.place);
                  }),
            )
          },
        ),
      ),
    );
  }
}
