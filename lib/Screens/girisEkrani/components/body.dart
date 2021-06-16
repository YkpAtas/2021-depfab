import 'package:flutter/material.dart';
import 'dart:async';

import 'package:login/Screens/girisEkrani/components/background.dart';
import 'package:login/anaSayfaComponents/screens/anasayfa.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () async {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Anasayfa()));
    });
    Size size = MediaQuery.of(context).size;
    // Bu boyut bize ekranımızın toplam yüksekliğini ve genişliğini sağlar
    return Backgraund(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/logo-cift.png"),
              width: 500,
              height: 500,
            ),
            Text(
              "Deprem Değil Bina Öldürür..",
              style: TextStyle(
                color: Color(0xFF050540),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
