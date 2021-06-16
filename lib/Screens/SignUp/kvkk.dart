import 'package:flutter/material.dart';
import 'package:login/Screens/SignUp/signup_screens.dart';
import 'package:login/anaSayfaComponents/screens/anasayfa.dart';
import 'package:login/constants.dart';

class Viever extends StatefulWidget {
  @override
  _VieverState createState() => _VieverState();
}

class _VieverState extends State<Viever> {
  bool _checked = false;
  TextEditingController t1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "Bilgilendirme",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
              )),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                title: Text(
                  'Kullanıcı Bilgilendirme Metni',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: Text(
                  "\n6698 sayılı Kişisel Verilerin Korunması Kanunu (KVKK) kapsamında, mobil uygulamamıza üye olmanız veya üye olmadan hizmetlerimizden yararlanmanız sırasında “kimlik”, “iletişim”, ve “işlem güvenliği” kategorisindeki kişisel verileriniz tamamen veya kısmen otomatik yöntemlerle “erişim yetkilerinin yürütülmesi”, “hizmet satış süreçlerinin yürütülmesi”, “ziyaretçi kayıtlarının oluşturulması ve takibi”, amaçlarıyla; KVKK 5’inci maddesindeki hukuka uygunluk sebeplerine dayanılarak işlenmekte ve teknik altyapı sağlayıcılara aktarılmaktadır. KVKK 11’inci maddesi kapsamındaki taleplerinizi bize iletebilirisiniz. ",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              CheckboxListTile(
                  title: Text(
                    "Okudum,Onaylıyorum",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  value: _checked,
                  onChanged: (bool value) {
                    setState(() {
                      _checked = value;
                    });
                  }),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_checked == false) {
                    isaretle = _checked;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Anasayfa()),
                    );
                  } else {
                    isaretle = _checked;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateUser()),
                    );
                  }
                },
                child: const Text('Devam Et'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
