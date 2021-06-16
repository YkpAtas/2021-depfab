/*import 'package:flutter/material.dart';
import 'package:login/Screens/Login/components/background.dart';
import 'package:login/Screens/SignUp/signup_screens.dart';
import 'package:login/anaSayfaComponents/components/background.dart';
import 'package:login/components/already_have_an_account_acheck.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';
import 'package:login/components/text_field_container.dart';
import 'package:login/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:kartal/kartal.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  String email;
  String password;
  Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/tek-logo.png"),
              width: 140,
              height: 140,
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "OTURUM AÇ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF050540),
                fontSize: 20,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            TextFormField(
              onSaved: (x) {
                setState(() {
                  email = x;
                });
              },
            ),
            RoundedInputField(
              hintText: "E-mail Adresiniz",
              onSaved: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "OTURUM AÇ",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AnaSayfaBackground();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {},
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}*/
