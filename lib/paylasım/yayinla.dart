import 'package:flutter/material.dart';
import 'veritabani.dart';
import 'package:numberpicker/numberpicker.dart';

class Yayinla extends StatefulWidget {
  const Yayinla({Key? key}) : super(key: key);

  @override
  State<Yayinla> createState() => _YayinlaState();
}

@override
void dispose() {
  ADSOYAD.dispose();
  TELEFONO.dispose();
  EKLENENNOT.dispose();
}

late List<Task> allTasks;
TextEditingController ADSOYAD = TextEditingController();
TextEditingController TELEFONO = TextEditingController();
TextEditingController EKLENENNOT = TextEditingController();

TimeOfDay selectedTime = TimeOfDay.now();
DateTime selectedDate = DateTime.now();
String date = "";
String yayinlakalkisdropdownvalue = "ADANA";
String yayinlavarisdropdownvalue = "ADANA";
int currentIntValue = 10;
int fiyatvalue = 10;

class _YayinlaState extends State<Yayinla> {
  @override
  void initState() {
    super.initState();
    allTasks = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                color: Colors.transparent.withAlpha(0),
                image: const DecorationImage(
                  image: AssetImage("images/yolculuk.gif"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    const Text(
                      "KALKIŞ YERİNİ SEÇİNİZ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    DropdownButton<String>(
                      alignment: Alignment.center,
                      value: yayinlakalkisdropdownvalue,
                      iconSize: 30,
                      icon: const Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      focusColor: Colors.white,
                      dropdownColor: Colors.blue,
                      underline: Container(
                        height: 2,
                        color: Colors.white,
                      ),
                      onChanged: (String? newValue1) {
                        setState(() {
                          yayinlakalkisdropdownvalue = newValue1!;
                        });
                      },
                      items: Turkiye.locations
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value.toUpperCase()),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    const Text(
                      "VARIŞ YERİNİ SEÇİNİZ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    DropdownButton<String>(
                      alignment: Alignment.center,
                      value: yayinlavarisdropdownvalue,
                      iconSize: 30,
                      icon: const Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      focusColor: Colors.white,
                      dropdownColor: Colors.blue,
                      underline: Container(
                        height: 2,
                        color: Colors.white,
                      ),
                      onChanged: (String? newValue2) {
                        setState(() {
                          yayinlavarisdropdownvalue = newValue2!;
                        });
                      },
                      items: Turkiye.locations
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value.toUpperCase()),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.date_range_outlined),
                label: const Text(
                  "KALKIŞ TARİHİNİ SEÇİNİZ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  secilentarih(context);
                },
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        const BorderSide(width: 4, color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  secilenzaman(context);
                },
                icon: Icon(Icons.access_time),
                label: const Text(
                  "KALKIŞ SAATİNİ SEÇİNİZ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        BorderSide(width: 4, color: Colors.white))),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    //Divider(color: Colors.grey, height: 32),

                    const Text('ÜCRETİ BELİRLEYİNİZ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    NumberPicker(
                      textStyle: TextStyle(color: Colors.blue.shade900),
                      value: fiyatvalue,
                      selectedTextStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      minValue: 0,
                      maxValue: 300,
                      step: 10,
                      itemHeight: 100,
                      axis: Axis.horizontal,
                      onChanged: (value) => setState(() => fiyatvalue = value),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                decoration: const InputDecoration(
                  labelText: "Adınız Soyadınız",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 5.0),
                  ),
                  alignLabelWithHint: true,
                ),
                textAlign: TextAlign.center,
                controller: ADSOYAD,
                keyboardType: TextInputType.name,

                // maxLines: maksimumsatir,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                decoration: const InputDecoration(
                  labelText: "Telefon Numaranız",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 5.0),
                  ),
                  alignLabelWithHint: true,
                ),
                textAlign: TextAlign.center,
                controller: TELEFONO,
                keyboardType: TextInputType.number,
                // maxLines: maksimumsatir,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                decoration: const InputDecoration(
                  labelText: "NOTUNUZ",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 5.0),
                  ),
                  alignLabelWithHint: true,
                ),
                textAlign: TextAlign.center,
                controller: EKLENENNOT,
                keyboardType: TextInputType.text,
                // maxLines: maksimumsatir,
              ),
            ),
            TextButton.icon(
              onPressed: () {
                counter++;
                if (counter >= 2) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        backgroundColor: Colors.blue,
                        content: Text(
                            "AKTİF 1 İLAN HAKKINA SAHİPSİNİZ\nDİLERSENİZ AKTİF İLANINIZI DÜZENLEYEBİLİRSİNİZ\n\n EĞER AKTİF İLANINIZ DA DEĞİŞİKLİK YAPTIYSANIZ DEĞİŞİKLİKLERİNİZ BAŞARIYLA KAYDEDİLMİŞTİR.",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                      );
                    },
                  );
                } else {
                  var yenieklenecekilan = Task.create(
                      taskadsoyad: ADSOYAD,
                      tasktelefonno: TELEFONO,
                      taskeklenennot: EKLENENNOT,
                      taskfiyat: fiyatvalue,
                      taskkalkisyeri: yayinlakalkisdropdownvalue,
                      tasvarisyeri: yayinlavarisdropdownvalue,
                      tasksecilenzaman: selectedTime,
                      tasksecilentarih: selectedDate);
                  allTasks.add(yenieklenecekilan);
                  // verilerikaydet();

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.blue,
                        alignment: Alignment.center,
                        title: const Text(
                          "İLANINIZ BAŞARIYLA YAYINLANDI!",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        actions: [
                          TextButton.icon(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.blue,
                                      content: Text(
                                        "İSİM SOYİSİM: ${ADSOYAD.text}\nTELEFON NUMARASI: ${TELEFONO.text}\nKALKIŞ ŞEHRİ: ${yayinlakalkisdropdownvalue}\nVARIŞ ŞEHRİ: ${yayinlavarisdropdownvalue}\nGÜN: ${selectedDate.day}.${selectedDate.month}.${selectedDate.year}\nSAAT: ${selectedTime.hour}:${selectedTime.minute}\nFİYAT: ${fiyatvalue}\nNOTUNUZ: ${EKLENENNOT.text}",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    );
                                  },
                                );
                              },
                              icon: const Icon(
                                Icons.info,
                                color: Colors.white,
                              ),
                              label: const Text(
                                "İlan bilgilerinizi görmek için dokununuz.",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      );
                    },
                  );
                }
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(10),
                side: MaterialStateProperty.all(
                  BorderSide(width: 5, color: Colors.blue.shade900),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                minimumSize: MaterialStateProperty.all(
               const   Size(30, 60),
                ),
              ),
              icon:
                  const Icon(Icons.send_rounded, color: Colors.white, size: 30),
              label: const Text(
                "İLAN YAYINLA/DÜZENLE",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(6.0),
            ),
          ],
        ),
      ),
    );
  }

  secilenzaman(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      cancelText: "İPTAL",
      helpText: "KALKIŞ TARİHİNİ SEÇ",
      confirmText: "ONAYLA",
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }

  secilentarih(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      cancelText: "İPTAL",
      helpText: "KALKIŞ TARİHİNİ SEÇ",
      initialDatePickerMode: DatePickerMode.day,
      confirmText: "ONAYLA",
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate)
      setState(
        () {
          selectedDate = selected;
        },
      );
  }
}
