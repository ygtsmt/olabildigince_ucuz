import 'package:flutter/material.dart';
import 'yayinla.dart';
import 'ilanlar.dart';
import 'veritabani.dart';

class Arama extends StatefulWidget {
  const Arama({Key? key}) : super(key: key);

  @override
  State<Arama> createState() => _AramaState();
}

class _AramaState extends State<Arama> {
  String dropdownValue = "ADANA";
  String dropdownValue1 = "ADANA";

  DateTime selectedDateArama = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                color: Colors.transparent.withAlpha(0),
                image: const DecorationImage(
                  image: AssetImage("images/yolculuk.gif"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(child: dropdownlar(), flex: 1),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  textColor: Colors.white,
                  elevation: 20,
                  child: const Text("TARİH SEÇİNİZ"),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.blue.shade900, width: 2),
                  ),
                  onPressed: () async {
                    final DateTime? selected = await showDatePicker(
                      context: context,
                      cancelText: "İPTAL",
                      helpText: "KALKIŞ TARİHİNİ SEÇ",
                      initialDatePickerMode: DatePickerMode.day,
                      confirmText: "ONAYLA",
                      initialDate: selectedDateArama,
                      firstDate: DateTime(2010),
                      lastDate: DateTime(2025),
                    );
                    if (selected != null && selected != selectedDateArama)
                      setState(
                        () {
                          selectedDateArama = selected;
                        },
                      );
                  },
                ),
                Container(
                  height: 40,
                  width: 200,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: const Text(
                      "İLANLARI GETİR",
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.blue.shade900, width: 2),
                    ),
                    onPressed: () {
                      if (dropdownValue.toUpperCase().toString() ==
                              yayinlakalkisdropdownvalue.toUpperCase() &&
                          dropdownValue1.toUpperCase().toString() ==
                              yayinlavarisdropdownvalue.toUpperCase() &&
                          selectedDate.day.toString() ==
                              selectedDateArama.day.toString()) {
                        setState(() {});
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ilanlar(),
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Colors.blue,
                              content: Text(
                                "${selectedDateArama.day.toString()}:${selectedDateArama.month.toString()}:${selectedDateArama.year.toString()} tarihinde ${dropdownValue.toString()} ile ${dropdownValue1.toString()} arasında yolculuk ilanı mevcut değil. ",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            );
                          },
                        );
                      }

                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration:  BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage("images/yolculuk3.png"),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row dropdownlar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DropdownButton<String>(
          alignment: Alignment.center,
          value: dropdownValue,
          iconSize: 30,
          icon: const Icon(
            Icons.location_on,
            color: Colors.white,
          ),
          elevation: 16,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          focusColor: Colors.white,
          dropdownColor: Colors.blue.shade900,
          underline: Container(
            height: 2,
            color: Colors.white,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items:
              Turkiye.locations.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value.toUpperCase()),
            );
          }).toList(),
        ),
        DropdownButton<String>(
          iconSize: 30,
          alignment: Alignment.center,
          value: dropdownValue1,
          icon: const Icon(
            Icons.location_on,
            color: Colors.white,
          ),
          elevation: 16,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          focusColor: Colors.white,
          dropdownColor: Colors.blue.shade900,
          underline: Container(
            height: 2,
            color: Colors.white,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue1 = newValue!;
            });
          },
          items:
              Turkiye.locations.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value.toUpperCase(),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
