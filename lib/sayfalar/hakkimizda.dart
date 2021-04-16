import 'package:flutter/material.dart';

Widget hakkimizda() {
  TextStyle yaziTipi = TextStyle(fontSize: 20, fontFamily: "Calibri");
  return Scaffold(
    body: Container(
      color: Color.fromARGB(255, 128, 255, 128),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(top: 50, bottom: 50, right: 20, left: 20),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Karadeniz'in Reus'u",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Container(
                padding: EdgeInsets.all(5),
                color: Colors.deepOrange,
                child: Text("Takım ID: T3-20080-145", style: yaziTipi),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Takım Üyelerimiz:\n"
                  "- Burak Boz (Takım Kaptanı)\n"
                  "- Yusuf İpek\n"
                  "- Yiğit Zorlu\n"
                  "- Fatih Çağrı Batuş\n"
                  "- Hüseyin Mert Arslan\n"
                  "- Alican Göktürk Ekşi (Kaptan Yardımcısı)",
                  style: yaziTipi,
                ),
                color: Colors.yellow,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(5),
                color: Colors.deepOrange,
                child: Text("Danışman Hocamız: Adnan Demirci", style: yaziTipi),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
