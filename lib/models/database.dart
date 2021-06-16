import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login/anaSayfaComponents/screens/anasayfa.dart';
import 'package:login/models/neden.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class UserDetails extends StatefulWidget {
  @override
  userDetailsScreen createState() => userDetailsScreen();
}

class userDetailsScreen extends State<UserDetails> {
  var formKey = GlobalKey<FormState>();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String userNumber;
  String userSecondNumber;
  String userProximity;
  String userLastLocation = lastLocation;
  String proximityName;
  double enlem = lastEnlem;
  double boylam = lastBoylam;
  bool valuefirst = false;
  bool valuesecond = false;
  String dropdownValue;
  DateTime datanow = DateTime.now();
  TextEditingController t1 = TextEditingController();
  String t2;
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void _showWhy() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: Why(),
            );
          });
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(20.0),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/kayitOl.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 60),
                  TextFormField(
                    controller: t1,
                    onSaved: (x) {
                      setState(() {
                        proximityName = x;
                      });
                    },
                    validator: (x) {
                      if (x.isEmpty) {
                        return "Doldurulması Zorunludur!";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blue[900],
                      ),
                      errorStyle: TextStyle(fontSize: 18),
                      labelText: "Yakının Adı Soyadı",
                      labelStyle:
                          TextStyle(fontSize: 20, color: Colors.blueGrey),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_add_alt,
                        color: Colors.blue[900],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      filled: true,
                      hintStyle:
                          TextStyle(color: Colors.blueGrey, fontSize: 20),
                      hintText: "Yakınlık Derecesi",
                    ),
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 18,
                    style: TextStyle(color: Colors.blue),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                        t2 = newValue;
                      });
                    },
                    items: <String>[
                      "Baba",
                      "Anne",
                      "Kardeş",
                      "Amca-Dayı",
                      "Hala-Teyze",
                      "Diğer.."
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 20),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: t3,
                    onSaved: (x) {
                      setState(() {
                        userNumber = x;
                      });
                    },
                    validator: (x) {
                      if (x.isEmpty) {
                        return "Doldurulması Zorunludur!";
                      } else {
                        if (EmailValidator.validate(x) != true) {
                          return "Geçerli Bir Telefon numarası Giriniz!";
                        } else {
                          return null;
                        }
                      }
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Colors.blue[900],
                      ),
                      errorStyle: TextStyle(fontSize: 18),
                      labelText: "Telefon Numaranız",
                      labelStyle:
                          TextStyle(fontSize: 20, color: Colors.blueGrey),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: t4,
                    onSaved: (x) {
                      setState(() {
                        userSecondNumber = x;
                      });
                    },
                    validator: (x) {
                      if (x.isEmpty) {
                        return "Doldurulması Zorunludur!";
                      } else {
                        if (EmailValidator.validate(x) != true) {
                          return "Geçerli Bir Telefon numarası Giriniz!";
                        } else {
                          return null;
                        }
                      }
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Colors.blue[900],
                      ),
                      errorStyle: TextStyle(fontSize: 18),
                      labelText: "Yakın Kişinin Telefon Numarası",
                      labelStyle:
                          TextStyle(fontSize: 20, color: Colors.blueGrey),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  RaisedButton(
                    onPressed: () {
                      FirebaseAuth _auth = FirebaseAuth.instance;
                      String id = _auth.currentUser.uid;

                      FirebaseFirestore.instance
                          .collection("users")
                          .doc("UsersDetails")
                          .set({
                        'Uid': id,
                        'userNumber': t3.text,
                        'userSecondNumber': t4.text,
                        'userProximityName': t1.text,
                        'userProximity': t2,
                        'userLastLocation': userLastLocation,
                        'userEnlem': enlem,
                        'userBoylam': boylam,
                        'Date': datanow,
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Anasayfa()));
                    },
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    hoverColor: Colors.black,
                    child: Text(
                      "Kaydet",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  TextButton(
                      onPressed: () => _showWhy(),
                      child: Text(
                        "Neden Bu Bilgilere İhtiyacımız Var?",
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
