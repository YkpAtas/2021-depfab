import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class OnemliTelefonNo extends StatefulWidget {
  @override
  _OnemliTelefonNoState createState() => _OnemliTelefonNoState();
}

class _OnemliTelefonNoState extends State<OnemliTelefonNo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Önemli Telefonlar"),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: RaisedButton(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  subtitle: Text(
                    "184",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  dense: true,
                  isThreeLine: true,
                  title: Text(
                    "SABİM",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onPressed: () async {
                  _callNumber('184');
                },
              ),
            ),
            Card(
              child: RaisedButton(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  subtitle: Text(
                    "112",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  dense: true,
                  isThreeLine: true,
                  title: Text(
                    "Acil Yardım",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onPressed: () async {
                  _callNumber('112');
                },
              ),
            ),
            Card(
              child: RaisedButton(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  subtitle: Text(
                    "110",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  dense: true,
                  isThreeLine: true,
                  title: Text(
                    "İtfaiye",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onPressed: () async {
                  _callNumber('110');
                },
              ),
            ),
            Card(
              child: RaisedButton(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  subtitle: Text(
                    "114",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  dense: true,
                  isThreeLine: true,
                  title: Text(
                    "Zehirlenme İhbar",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onPressed: () async {
                  _callNumber('114');
                },
              ),
            ),
            Card(
              child: RaisedButton(
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.green),
                  subtitle: Text(
                    "153",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  dense: true,
                  isThreeLine: true,
                  title: Text(
                    "Zabıta",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onPressed: () async {
                  _callNumber('153');
                },
              ),
            ),
            Card(
              child: RaisedButton(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  subtitle: Text(
                    "154",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  dense: true,
                  isThreeLine: true,
                  title: Text(
                    "Trafik",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onPressed: () async {
                  _callNumber('154');
                },
              ),
            ),
            Card(
              child: RaisedButton(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  subtitle: Text(
                    "155",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  dense: true,
                  isThreeLine: true,
                  title: Text(
                    "Polis İmdat",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onPressed: () async {
                  _callNumber('155');
                },
              ),
            ),
            Card(
              child: RaisedButton(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  subtitle: Text(
                    "156",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  dense: true,
                  isThreeLine: true,
                  title: Text(
                    "Jandarma",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onPressed: () async {
                  _callNumber('156');
                },
              ),
            ),
            Card(
              child: RaisedButton(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  subtitle: Text(
                    "177",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  dense: true,
                  isThreeLine: true,
                  title: Text(
                    "Orman Yangını İhbar",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onPressed: () async {
                  _callNumber('177');
                },
              ),
            ),
            Card(
              child: RaisedButton(
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.green),
                  subtitle: Text(
                    "185",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  dense: true,
                  isThreeLine: true,
                  title: Text(
                    "Su Kaçağı İhbarı",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onPressed: () async {
                  _callNumber('185');
                },
              ),
            ),
            Card(
              child: RaisedButton(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  subtitle: Text(
                    "186",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  dense: true,
                  isThreeLine: true,
                  title: Text(
                    "Elektrik Kaçağı İhbarı",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onPressed: () async {
                  _callNumber('186');
                },
              ),
            ),
            Card(
              child: RaisedButton(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  subtitle: Text(
                    "187",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  dense: true,
                  isThreeLine: true,
                  title: Text(
                    "Gaz Kaçağı İhbarı",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onPressed: () async {
                  _callNumber('187');
                },
              ),
            ),
          ],
        ));
  }
}

_callNumber(String number) async {
  bool res = await FlutterPhoneDirectCaller.callNumber(number);
}
