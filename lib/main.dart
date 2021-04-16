import 'package:flutter/material.dart';
import 'sayfalar/detaylar/detaylar.dart';
import 'sayfalar/anasayfa/anasayfa.dart';
import 'sayfalar/hakkimizda.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REUS Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _secilenIndex = 1;
  Widget gosterilenWidget = AnaSayfa();

  void dokunuldugunda(int index) {
    setState(() {
      _secilenIndex=index;
      gosterilenWidget = widgetSec(index);
    });
  }

  Widget widgetSec(index) {
    switch (index) {
      case 0:
        return  hakkimizda();
      case 1:
        return AnaSayfa();
      case 2:
        return Detaylar();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:gosterilenWidget,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: ('Hakkımızda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Anasayfa'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: ('Detay Sayfası'),
          ),
        ],
        currentIndex: _secilenIndex,
        selectedItemColor: Colors.amber[800],
        onTap: dokunuldugunda,
      ),
    );
  }
}
