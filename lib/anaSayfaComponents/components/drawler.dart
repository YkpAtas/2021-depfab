import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/Screens/Welcome/welcome_screen.dart';
import 'package:login/alanlar/OnemliTelefonlar.dart';
import 'package:login/alanlar/ilceler/hastaneler/hastaneler.dart';
import 'package:login/alanlar/karakollar/karakollar.dart';
import 'package:login/alanlar/riskliAlanlar.dart';
import 'package:login/anaSayfaComponents/screens/anasayfa.dart';
import 'package:login/constants.dart';
import 'package:login/models/database.dart';
import 'package:login/sonDepremler/views/sonDepremlerAnaSayfa.dart';
import 'package:login/sonDepremler/views/what_is_earthquake.dart';
import 'package:login/toplanmaAlanlar%C4%B1/toplanmaalanlari.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  String fullname;
  String eposta;

  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      elevation: 16.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Kullanıcı Bilgilerini"),
            accountEmail: Text("Düzenle"),
            currentAccountPicture: CircleAvatar(
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                onPressed: () {
                  if (isaretle == false || isaretle == null) {
                    if (yapildi == false || yapildi == null) {
                      Alert(
                          type: AlertType.error,
                          context: context,
                          title: "Griş Yapmadınız",
                          desc: "Lütfen Giriş yapınız!",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "KAPAT",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                              onPressed: () => Anasayfa(),
                            )
                          ]).show();
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserDetails()),
                      );
                    }
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserDetails()),
                    );
                  }
                },
              ),
              backgroundColor: Colors.white,
              /* child: Image.asset(
                "login/assets/images/LOGO.png",
              ),*/
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
          ListTile(
            title: new Text("KATEGORİLER"),
            onTap: () {},
            leading: new Icon(Icons.app_registration),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SonDepremler()),
              );
            },
            title: new Text("SON DEPREMLER"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RiskliAlanlar()),
              );
            },
            title: new Text("RİSKLİ ALANLAR"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: new Text("TOPLANMA ALANLARI"),
            trailing: new Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ToplanmaAlanlari()),
              );
            },
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Hastaneler()),
              );
            },
            title: new Text(
                "ÖNCELİKLİ KAMU KURUMLARI (Sağlık,Eğitim,Kamu Hizmeti)"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Karakollar()),
              );
            },
            title: new Text("EN YAKIMN KAMU KURULUŞLARI"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: new Text("ÖNEMLİ TELEFONLAR"),
            trailing: new Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnemliTelefonNo()),
              );
            },
          ),
          ListTile(
            title: new Text("DEPREM NEDİR ?"),
            trailing: new Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WhatIsEarthquake()),
              );
            },
          ),
        ],
      ),
    );
  }
}
