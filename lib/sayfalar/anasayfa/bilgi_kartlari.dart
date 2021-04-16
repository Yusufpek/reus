import 'package:flutter/material.dart';
import 'bilgi.dart';

List<Widget> bilgilendirmeAlani(BuildContext context) {
  List<Bilgi> bilgiler = bilgileriCek();
  List<Widget> kartlar = [];
  for (Bilgi blg in bilgiler) {
    kartlar.add(bilgiKarti(blg, context));
  }
  return kartlar;
}

Widget bilgiKarti(Bilgi bilgiler, BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(right: 20),
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      color: bilgiler.renk,
      boxShadow: [
        new BoxShadow(
          color: Colors.grey,
          blurRadius: 10.0,
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            bilgiler.baslik,
            style:
                TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, bottom: 15),
          child: Text(
            bilgiler.kisaIcerik,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    ),
  );
}
