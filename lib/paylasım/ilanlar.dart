import 'package:flutter/material.dart';
import 'yayinla.dart';
import 'veritabani.dart';
import 'package:uuid/uuid.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Ilanlar extends StatefulWidget {
  const Ilanlar({Key? key}) : super(key: key);
  @override
  
  State<Ilanlar> createState() => _IlanlarState();
}

class _IlanlarState extends State<Ilanlar> {
  var yenitask = Task(
      id:  Uuid().v1(),
      taskadsoyad: ADSOYAD.text,
      tasktelefonno: TELEFONO.text,
      taskfiyat: fiyatvalue,
      taskkalkisyeri: yayinlakalkisdropdownvalue,
      tasvarisyeri: yayinlavarisdropdownvalue,
      tasksecilenzaman: selectedTime.hour.toString(),
      tasksecilentarih: selectedDate.toString(),
      taskeklenennot: EKLENENNOT.text);
  var yenieklenecekilan = Task.create(
    taskadsoyad: ADSOYAD,
    tasktelefonno: TELEFONO,
    taskfiyat:fiyatvalue,
    taskkalkisyeri: yayinlakalkisdropdownvalue,
    tasvarisyeri: yayinlavarisdropdownvalue,
    tasksecilenzaman: selectedTime,
    tasksecilentarih: selectedDate,
    taskeklenennot: EKLENENNOT
  );
String tl = "₺";
  @override
  Widget build(BuildContext context) {
    allTasks.add(yenieklenecekilan);
    setState(() {});
    return Center(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("İLANLAR"),
            backgroundColor: Colors.blue.shade900,
          ),
          body: allTasks.isNotEmpty
              ? ListView.builder(
                  itemCount: 1 /*  allTasks.length */,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 275,
                        color: Colors.blue.shade900,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 12,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    " Kalkış Tarihi: ${yenieklenecekilan.tasksecilentarih}.${selectedDate.month}.${selectedDate.year}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    " Kalkış Saati ${yenieklenecekilan.tasksecilenzaman}:${selectedTime.minute}",
                                      style: TextStyle(
                                        color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                   Text(
                                    " FİYAT: ${fiyatvalue} TL",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  yenieklenecekilan.taskkalkisyeri
                                      .toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                        color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
                                ),
                                Icon(MdiIcons.arrowRightBold,
                                    size: 75, color: Colors.white),
                                Text(
                                  yenieklenecekilan.tasvarisyeri.toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: TextButton.icon(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor: Colors.blue.shade900,
                                        content: Text(
                                          "İSİM:\n${ADSOYAD.text.toUpperCase()}\nTELEFON NUMARASI:\n${TELEFONO.text.toUpperCase()}\nNOT:\n${EKLENENNOT.text}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(
                                  Icons.info,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                label: const Text(
                                  "İLETİŞİM BİLGİLERİ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.blue)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : Center(
                  child: Text("LİSTE BOŞ AMK"),
                )),
    );
  }

}
