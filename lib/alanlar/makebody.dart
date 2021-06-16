import 'package:flutter/material.dart';
import 'package:login/alanlar/ilceler/pamukkale.dart';

import 'package:login/alanlar/listeler.dart';

import '../constants.dart';

class Makebody extends StatelessWidget {
  const Makebody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SingleChildScrollView(child: buildListTile(context))
        ]);
  }

  SizedBox buildListTile(context) {
    return SizedBox(
      height: 715,
      width: double.infinity,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[0][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[0][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = mahPamukkale;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[1][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[1][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = merkezefendi;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[2][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[2][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = civril;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[3][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[3][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = acipayam;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[4][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[5][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = tavas;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[6][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[6][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = saraykoy;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[7][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[7][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = buldan;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[8][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[8][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = kale;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[9][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[9][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = cal;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[10][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[10][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = cameli;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[11][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[11][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = serinhisar;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[12][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[12][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = bozkurt;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[13][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[13][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = guney;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[14][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[14][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = cardak;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[15][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[15][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = bekilli;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[16][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[16][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = babadag;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[16][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[16][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = babadag;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[17][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[17][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = beyagac;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.place),
                        title: Text(
                          ilceler[18][0],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          ilceler[18][2] + " Risk bölgesi",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('MAHALLELER'),
                            onPressed: () {
                              deneme = baklan;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pamukkale()));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /*Card buildColumn(
    String _ilce,
    String risk,
  ) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.place),
            title: Text(
              _ilce,
              style: TextStyle(fontSize: 20.0),
            ),
            subtitle: Text(risk),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text(''),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LISTEN'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }*/
}
