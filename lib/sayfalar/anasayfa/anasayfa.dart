import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bilgi_kartlari.dart';
import '../detaylar/firebase.dart';

class AnaSayfaa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfaa> {
  TextStyle yaziTipi = TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "Calibri");
  String durum = "Durum Bağlı Değil";
  Color renk = Colors.grey;

  @override
  Widget build(BuildContext context) {
    final FirebaseKontrolcu firebaseKontrolcu = Get.put(FirebaseKontrolcu());
    firebaseKontrolcu.durumCek();

    return Scaffold(
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 128, 255, 128),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text("REUS", style: TextStyle(fontSize: 48)),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: EdgeInsets.all(20),
              color: renk,
              child: Obx(() {
                switch (firebaseKontrolcu.durum.toString()) {
                  case "Durum: Güvenli":
                    renk = Colors.green;
                    break;
                  case "Durum: Tehlikeli":
                    renk = Colors.red;
                    break;
                  default:
                    renk = Colors.grey;
                    break;
                }
                return Center(
                    child: Text(
                  "${firebaseKontrolcu.durum}",
                  style: yaziTipi,
                ));
              }),
            ),
            //Ekrana sığması için sizedbox kullandık
            SizedBox(
              height: 300,
              child: Container(
                child: ListView(
                  padding: EdgeInsets.only(left: 20),
                  children: bilgilendirmeAlani(context),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  final TextStyle yaziTipi =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "Calibri");
  final Color renk = Colors.amber;

  @override
  Widget build(BuildContext context) {
    final FirebaseKontrolcu firebaseKontrolcu = Get.put(FirebaseKontrolcu());
    firebaseKontrolcu.durumCek();

    return Scaffold(
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 128, 255, 128),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text("REUS", style: TextStyle(fontSize: 48)),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: renk,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Obx(() {
                return Center(
                    child: Text(
                  "${firebaseKontrolcu.durum}",
                  style: yaziTipi,
                ));
              }),
            ),
            //Ekrana sığması için sizedbox kullandık
            SizedBox(
              height: 300,
              child: Container(
                child: ListView(
                  padding: EdgeInsets.only(left: 20),
                  children: bilgilendirmeAlani(context),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
