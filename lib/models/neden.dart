import 'package:flutter/material.dart';

class Why extends StatefulWidget {
  @override
  _WhyState createState() => _WhyState();
}

class _WhyState extends State<Why> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          RichText(
              text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                TextSpan(
                    text: 'Merhabalar ',
                    style: TextStyle(fontSize: 20, color: Colors.red)),
                TextSpan(
                    text:
                        "\nYaşadığımız dünyanın en büyük sorunlarından biri de depremdir. Her sene yaşanan doğal afetlerden biri olan deprem yüzünden binlerce hatta milyonlarca insan bu zamana kadar yaşamını yitirmiştir. Ülkemize baktığımızda bulunduğu coğrafya bakımından incelendiğinde birinci dereceden deprem bölgesinde yaşayan birçok insanımız vardır. Bu insanlar deprem öncesinde, deprem anında ve sonrasında neler yapabileceği konusunda yetersiz bilgiye sahiptirler. Bundan dolayı felaket anlarında panik olmaları olasıdır. Böylesi büyük felaketlerin önüne geçmek, insanlarımızı böylesi büyük felaketlerden korumak ve bilgilendirmek için bu mobil uygulamayı yapmak istedik.")
              ]))
        ],
      ),
    );
  }
}
