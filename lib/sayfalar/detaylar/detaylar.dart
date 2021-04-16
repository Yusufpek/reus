import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './firebase.dart';

class Detaylar extends StatefulWidget {
  @override
  _DetaylarState createState() => _DetaylarState();
}

class _DetaylarState extends State<Detaylar> {
  TextStyle yaziTipi = TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {
    final FirebaseKontrolcu firebaseKontrolcu = Get.put(FirebaseKontrolcu());
    firebaseKontrolcu.durumCek();
    firebaseKontrolcu.degerCek();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "REUS Detay Sayfası",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
          color: Color.fromARGB(255, 128, 255, 128),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Obx(() {
                  return Text(
                    "${firebaseKontrolcu.durum}",
                    style: yaziTipi,
                  );
                }),
                Obx(() {
                  return Text(
                    "${firebaseKontrolcu.deger}",
                    style: yaziTipi,
                  );
                }),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Not: Verileri okumak için internetinizin açık \nolduğunudan emin olunuz !",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
