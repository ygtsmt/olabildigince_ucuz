import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:olabildigince_ucuz/bilet/biletarama.dart';
import 'package:olabildigince_ucuz/paylas%C4%B1m/anasayfapaylasim.dart';
import 'sabitler.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text("data"),
      ),
      appBar: AppBar(
        title: Text("ORTAK ULAŞIM"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 3,
              child: Text(
                "HANGİ YOLCULUK HİZMETİNİ KULLANMAK İSTERSİN?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                "ortakulasim.com senin için bir yolculuğun olabildiğince ucuz seçeneklerini sana sunuyor.Dilediğini seç ve yolculuğun tadını çıkar!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue.shade900),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.symmetric(
                  horizontal: BorderSide(width: 2,
                  color: Colors.blue.shade900,)
                )),
                child: Image.asset(
                  "images/araba.gif", fit: BoxFit.fill,
                  //height: 190,
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 3, color: Colors.blue.shade900)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BiletArama()),
                    );
                  },
                  child: Ink(
                      child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/pixotobus.png",
                            ),
                          ],
                        ),
                      ), Expanded(
                              child: Text(
                                "\nOTOBÜS BİLETİ AL!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                      /* Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Text(
                                "\nOTOBÜS BİLETİ AL!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              "ARACILIK SİSTEMİNİN TAMAMEN ORTADAN KALDIRILDIĞI ALABİLECEĞİN EN UCUZ BİLETİ AL!\n",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ) */
                    ],
                  )),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 3, color: Colors.blue.shade900)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AnasayfaStful()),
                    );
                  }, // Handle your callback
                  child: Ink(
                      child: Row(
                    children: [ 
                      Expanded(
                        child: Image.asset(
                          'images/pix2.png',
                        ),
                      ),Expanded(
                        child: Text(
                          'YOLCULUK\nPAYLAŞIMI!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                      ),
                     /*  Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'YOLCULUK PAYLAŞIMI!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              'SENİNLE AYNI KONUMA GİDEN İNSANLARIN YOLCULUĞUNA ORTAK OLABİLİR VEYA ONLARI YOLCULUĞUNA ALABİLİRSİN!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ) */
                    ],
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
