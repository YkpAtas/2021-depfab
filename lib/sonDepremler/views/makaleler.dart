import 'package:flutter/material.dart';

class Makaleler extends StatefulWidget {
  @override
  _MakalelerState createState() => _MakalelerState();
}

class _MakalelerState extends State<Makaleler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Yazılar",
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
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
                  title: Text('Deprem Nedir'),
                  subtitle: Text(
                      'Deprem, yer sarsıntısı veya zelzele, yer kabuğunda beklenmedik bir anda ortaya çıkan enerji sonucunda meydana gelen sismik dalgalanmalar ve bu dalgaların yeryüzünü sarsması olayıdır. Sismik aktivite ile kastedilen meydana geldiği alandaki depremin frekansı, türü ve büyüklüğüdür. Depremler sismograf ile ölçülür.'),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Devamını Oku...'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
                const ListTile(
                  title: Text('Deprem Türleri Nelerdir'),
                  subtitle: Text(
                      'Dünyanın iç yapısı konusunda, jeolojik ve jeofizik çalışmalar sonucu elde edilen verilerin desteklediği bir yeryüzü modeli bulunmaktadır. Bu modele göre, yerkürenin dış kısmında yaklaşık 70-100 km.kalınlığında oluşmuş bir taşküre (Litosfer) vardır. Kıtalar ve okyanuslar litosfer içerisinde yer alır. Tüm jeolojik süreçler ve depremler Litosfer içerisinde meydana gelirler. Litosfer ile çekirdek arasında kalan ve kalınlığı 2.900 km olan kuşağa Manto adı verilir. Manto nun altındaki çekirdegin Nikel-Demir karışımından oluştuğu kabul edilmektedir.'),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Devamını Oku...'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
                const ListTile(
                  title: Text('Olası Deprem Durumlarında Neler Yaplımalı '),
                  subtitle: Text(
                      'Sabitlenmemiş dolap, raf, pencere vb. eşyalardan uzak durulmalıdır. Varsa sağlam sandalyelerle desteklenmiş masa altına veya dolgun ve hacimli koltuk, kanepe, içi dolu sandık gibi koruma sağlayabilecek eşya yanına çömelerek hayat üçgeni oluşturulmalıdır.'),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Devamını Oku...'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
