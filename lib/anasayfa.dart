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
    return Scaffold(drawer:Drawer(child: Text("data"),) ,
      appBar: AppBar(
        title: Text("ENHESAPLISINIAL.COM"),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal:
                            BorderSide(width: 2, color: Colors.blue.shade900))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "HANGİ YOLCULUK HİZMETİMİZİ KULLANMAK İSTERSİN?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "enhesaplisinial.com senin için bir yolculuğun olabildiğince ucuz seçeneklerini sana sunuyor.Dilediğini seç ve yolculuğun tadını çıkar!",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue.shade900),
                      ),
                    ),
                    
                  ],
                )),
                Expanded(flex: 2,
                  child: Image.asset(
                          "images/araba.gif",fit: BoxFit.fill,
                          //height: 190,
                        ),
                        
                ),
          
            Expanded(flex: 4,
              child: Column(
                children: [
                
                  Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 3, color: Colors.blue.shade900)),
                    child: InkWell(
                      onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BiletArama()),
                          );
                       }, // Handle your callback
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
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
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
                          )
                        ],
                      )),
                    ),
                  ),
                    Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 3, color: Colors.blue.shade900)),
                    child: InkWell(
                      onTap: () {


                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AnasayfaStful()),
                          );
                        

                      }, // Handle your callback
                      child: Ink(
                          child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/pix2.png',
                                ),
                              ],
                            ),
                          ),
                          Expanded(
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
                          )
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
