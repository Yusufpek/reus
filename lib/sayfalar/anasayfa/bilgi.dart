import 'package:flutter/material.dart';

class Bilgi {
  String baslik;
  String kisaIcerik;
  Color renk;
  Bilgi(this.baslik, this.kisaIcerik, this.renk);
}

List<Bilgi> bilgileriCek() {
  List<Bilgi> bilgiler = [];
  Bilgi bilgi1 = Bilgi("Akıntı Öncesinde", "Dalgalı havada denize girmeyin !", Colors.cyan);
  bilgiler.add(bilgi1);
  Bilgi bilgi2 = Bilgi("Akıntı Sırasında", "Akıntıya kapıldıysanız sakin olun !", Colors.orange);
  bilgiler.add(bilgi2);
  Bilgi bilgi3 = Bilgi("Akıntı Öncesinde",
      "Denize girmek için cankurtaran bulunan plajları tercih edin !", Colors.cyan);
  bilgiler.add(bilgi3);
  Bilgi bilgi4 = Bilgi(
      "Akıntı Sırasında", "Akıntı sizi dibe çekmez sahilden açığa doğru sürükler !", Colors.orange);
  bilgiler.add(bilgi4);
  Bilgi bilgi5 = Bilgi("Akıntı Öncesinde",
      "Çocuklarınız denizdeyken onları gözünüzün önünden ayırmayın !", Colors.cyan);
  bilgiler.add(bilgi5);
  Bilgi bilgi6 =
      Bilgi("Akıntı Sırasında", "Kıyıya doğru değil kıyıya paralel yüzün !", Colors.orange);
  bilgiler.add(bilgi6);
  Bilgi bilgi7 =
      Bilgi("Akıntı Öncesinde", "Denize mutlaka deniz kıyafeti ile girin !", Colors.cyan);
  bilgiler.add(bilgi7);
  Bilgi bilgi8 = Bilgi("Akıntı Sırasında",
      "Her zaman su üzerinde kalmaya çalışın ve elinizi kaldırın !", Colors.orange);
  bilgiler.add(bilgi8);
  return bilgiler;
}
