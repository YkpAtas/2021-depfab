import 'package:flutter/material.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/SignUp/kvkk.dart';
import 'package:login/Screens/SignUp/signup_screens.dart';
import 'package:login/Screens/Welcome/components/background.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/anaSayfaComponents/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Bu boyut bize ekranımızın toplam yüksekliğini ve genişliğini sağlar
    return Backgraund(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/giris.png"),
              width: 400,
              height: 400,
            ),
            Text(
              "Depremin ne zaman olacağını bilmiyoruz ama neler yapmamız gerektiğini biliyoruz.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF050540),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "Oturum Aç",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginUser(),
                    ));
              },
            ),
            RoundedButton(
              text: "Kayıt Ol",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Viever(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
