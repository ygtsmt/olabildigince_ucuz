import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'yayinla.dart';

import 'package:uuid/uuid.dart';

/*    ilanolustur() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          alignment: Alignment.center,
          height: 250,
          color: Colors.blue.shade900,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 10,
                child: Text(
                  KALKISCONTROLLER.text.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      " Kalkış Tarihi ${selectedDate.day}.${selectedDate.month}.${selectedDate.year}",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      " Kalkış Saati ${selectedTime.hour}:${selectedTime.minute}",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.arrow_forward, size: 50, color: Colors.white),
                    Text(
                                  "İSİM SOYİSİM : ${ADSOYAD.text}\nİLETİŞİM :${TELEFONO.text} ",textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 15),
                    )    
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Text(
                  VARISCONTROLLER.text.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
    );
  }  */

// verıtabanına kaydır

/* void veriyerlestir() {
  var box = Hive.box('test');
  box.add('emre');
  box.add('altunbilek');

  box.keys.forEach((element) {
    debugPrint(element.toString());
  });
} */

int counter = 0;

/* void profilverisi() {
  var box = Hive.box('kullanici');
  box.add(adSoyad.text);
  box.add(telefonNumarasi.text);
  box.add(kalkissehri.text);
  box.add(varissehri.text);
  //  box.put('kullaniciadi', '${adSoyad.text}');
  //  box.put('kullanicitelefon', '${telefonNumararasi.text}');

  box.values.forEach(
    (element) {
      debugPrint(
        element.toString(),
      );
    },
  );
} */
class Turkiye {
  static const List<String> locations = [
    "ADANA",
    "ADIYAMAN",
    "AFYONKARAHİSAR",
    "AĞRI",
    "AKSARAY",
    "AMASYA",
    "ANKARA",
    "ANTALYA",
    "ARDAHAN",
    "ARTVİN",
    "AYDIN",
    "BALIKESİR",
    "BARTIN",
    "BATMAN",
    "BAYBURT",
    "BİLECİK",
    "BİNGÖL",
    "BİTLİS",
    "BOLU",
    "BURDUR",
    "BURSA",
    "ÇANAKKALE",
    "ÇANKIRI",
    "ÇORUM",
    "DENİZLİ",
    "DİYARBAKIR",
    "DÜZCE",
    "EDİRNE",
    "ELAZIĞ",
    "ERZİNCAN",
    "ERZURUM",
    "ESKİŞEHİR",
    "GAZİANTEP",
    "GİRESUN",
    "GÜMÜŞHANE",
    "HAKKARİ",
    "HATAY",
    "IĞDIR",
    "ISPARTA",
    "İSTANBUL",
    "İZMİR",
    "KAHRAMANMARAŞ",
    "KARABÜK",
    "KARAMAN",
    "KARS",
    "KASTAMONU",
    "KAYSERİ",
    "KİLİS",
    "KIRIKKALE",
    "KIRKLARELİ",
    "KIRŞEHİR",
    "KOCAELİ",
    "KONYA",
    "KÜTAHYA",
    "MALATYA",
    "MANİSA",
    "MARDİN",
    "MERSİN",
    "MUĞLA",
    "MUŞ",
    "NEVŞEHİR",
    "NİĞDE",
    "ORDU",
    "OSMANİYE",
    "RİZE",
    "SAKARYA",
    "SAMSUN",
    "ŞANLIURFA",
    "SİİRT",
    "SİNOP",
    "SİVAS",
    "ŞIRNAK",
    "TEKİRDAĞ",
    "TOKAT",
    "TRABZON",
    "TUNCELİ",
    "UŞAK",
    "VAN",
    "YALOVA",
    "YOZGAT",
    "ZONGULDAK"
  ];
}

class Task {
  final String id;
  final String taskadsoyad;
  final String tasktelefonno;
  final String taskeklenennot;
  String taskkalkisyeri;
  String tasvarisyeri;
  final String tasksecilenzaman;
  final String tasksecilentarih;
  final int taskfiyat;

  Task(
      {required this.id,
      required this.taskadsoyad,
      required this.tasktelefonno,
      required this.taskeklenennot,
      required this.taskkalkisyeri,
      required this.taskfiyat,
      required this.tasvarisyeri,
      required this.tasksecilenzaman,
      required this.tasksecilentarih});
  factory Task.create(
      {required TextEditingController taskadsoyad,
      required TextEditingController tasktelefonno,
      required TextEditingController taskeklenennot,
      required String taskkalkisyeri,
      required int taskfiyat,
      required String tasvarisyeri,
      required TimeOfDay tasksecilenzaman,
      required DateTime tasksecilentarih}) {
    return Task(
        id: Uuid().v1(),
        taskadsoyad: ADSOYAD.text,
        tasktelefonno: TELEFONO.text,
        taskfiyat: fiyatvalue,
        taskeklenennot: EKLENENNOT.text,
        taskkalkisyeri: yayinlakalkisdropdownvalue,
        tasvarisyeri: yayinlavarisdropdownvalue,
        tasksecilenzaman: selectedTime.hour.toString(),
        tasksecilentarih: selectedDate.day.toString());
  }
}
