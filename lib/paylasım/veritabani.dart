import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'yayinla.dart';

import 'package:uuid/uuid.dart';



int counter = 0;


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
