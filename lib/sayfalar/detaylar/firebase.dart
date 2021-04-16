import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class FirebaseKontrolcu extends GetxController {
  RxInt deger = 0.obs;
  RxString durum = "".obs;

  final dbRef = FirebaseDatabase.instance.reference().child("veriler");

  void durumCek() {
    final DatabaseReference durumRef = dbRef.reference().child("durum");
    durumRef.onValue.listen((v) {
      durum.value = v.snapshot.value;
    });
  }

  void degerCek() {
    final DatabaseReference degerRef = dbRef.reference().child("deger");
    degerRef.onValue.listen((v) {
      deger.value = v.snapshot.value;
    });
  }
}
