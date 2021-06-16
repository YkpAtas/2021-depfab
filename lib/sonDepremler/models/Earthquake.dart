import 'dart:convert';

import 'package:http/http.dart' as http;

class Earthquake {
  final String tarih;
  final String hour;
  final String latitude;
  final String longitude;
  final String depth;
  final String siddet;
  final String place;
  final String solution;

  Earthquake(
      {this.tarih,
      this.hour,
      this.latitude,
      this.longitude,
      this.depth,
      this.siddet,
      this.place,
      this.solution});

  factory Earthquake.fromJson(Map json) {
    return Earthquake(
        tarih: json['tarih'],
        hour: json['saat'],
        latitude: json['enlem'],
        longitude: json['boylam'],
        depth: json['derinlik'],
        siddet: json['siddet'],
        place: json['yer'],
        solution: json['solution']);
  }

  Future<List<Earthquake>> getAll() async {
    var response =
        await http.get(Uri.parse("https://deprem.odabas.xyz/api/pure_api.php"));
    List json = jsonDecode(response.body);
    List<Earthquake> earthquakes =
        json.map((item) => Earthquake.fromJson(item)).toList();
    return earthquakes;
  }
}
