import 'dart:async';

import 'package:flutter/material.dart';
import 'package:olabildigince_ucuz/paylasım/veritabani.dart';

class BiletAramaAnaSayfa extends StatefulWidget {
  const BiletAramaAnaSayfa({Key? key}) : super(key: key);

  @override
  State<BiletAramaAnaSayfa> createState() => _BiletAramaAnaSayfaState();
}

class _BiletAramaAnaSayfaState extends State<BiletAramaAnaSayfa> {
  String dropdownValue2 = "ADANA";
  String dropdownValue3 = "ADANA";
  DateTime selectedDateArama = DateTime.now();
  int _currentPage = 0;
  Timer? _timer;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(seconds: 5),
        curve: Curves.fastOutSlowIn, //geçiş anımasyonu
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          appbaraltiresim(),
          dropdownlar1(),
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
                "BİLETLERİ GETİR",
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.blue.shade900, width: 2),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            height: 300,
            child: Center(
                child: Text(
              ' HEMENBILETAL.COM\nARACILIĞIN TAMAMEN ORTADAN KALDIRILDIĞI\nTÜRKİYENİN EN UCUZ BİLETİNİ SANA SUNAR.',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
          )
        ],
      ),
    );
  }

  Row dropdownlar1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DropdownButton<String>(
          alignment: Alignment.center,
          value: dropdownValue2,
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
              dropdownValue2 = newValue!;
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
          value: dropdownValue3,
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
              dropdownValue3 = newValue!;
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

  appbaraltiresim() {
    return Expanded(
      flex: 36,
      child: SizedBox(
        height: 200,
        child: FutureBuilder(
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return anaPagem();
              case ConnectionState.waiting:
                return const Text('Bekle...');
              case ConnectionState.done:
                if (snapshot.hasData) {
                  if (snapshot.data != null) {
                    return PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, index) {
                        return Card(
                          child: anaPagem(),
                        );
                      },
                    );
                  }
                }
                break;
              case ConnectionState.active:
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  PageView anaPagem() {
    return PageView(
      controller: _pageController,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/biletindirim.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/biletindirim2.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        /* s */

        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/biletindirim3.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
