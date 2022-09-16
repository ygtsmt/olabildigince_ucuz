/* import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'kullanılmayan/sabitler.dart';
import 'veritabani.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilIcerigi extends StatefulWidget {
  const ProfilIcerigi({Key? key}) : super(key: key);

  @override
  State<ProfilIcerigi> createState() => _ProfilIcerigiState();
}

class _ProfilIcerigiState extends State<ProfilIcerigi> {
  @override
  Widget build(BuildContext context) {
    /*  @override
    void dispose() {
      adSoyad.dispose();

      telefonNumarasi.dispose();

      super.dispose();
    }
 */
    /*  @override
    void initState() {
      super.initState();

      adSoyad.text;

      telefonNumarasi.text;
    } */

    return Center(
      child: Scaffold(
          backgroundColor: Colors.blue,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  //
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.transparent.withAlpha(0),
                    image: DecorationImage(
                      image: AssetImage("images/yolculuk.gif"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    /*   onChanged: (String deger) {
                print(deger);
              }, yazılan herseyı degerın ıcıne atar */
                    // keyboardType: klavyetipi,
                    // textInputAction: textbutonu,
                    decoration: InputDecoration(
                      labelText: "Adınız Soyadınız",
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      ),
                      alignLabelWithHint: true,
                    ),
                    textAlign: TextAlign.center,
                    controller: ADSOYAD,
                    // maxLines: maksimumsatir,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    /*   onChanged: (String deger) {
                print(deger);
              }, yazılan herseyı degerın ıcıne atar */
                    // keyboardType: klavyetipi,
                    // textInputAction: textbutonu,
                    decoration: InputDecoration(
                      labelText: "Telefon Numaranız",
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      ),
                      alignLabelWithHint: true,
                    ),
                    textAlign: TextAlign.center,
                    controller: TELEFONO,
                    // maxLines: maksimumsatir,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    // profilverisi();
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(
                            "Adınız Soyadınız:${ADSOYAD.text}\nTelefon Numaranız :${TELEFONO.text}",
                          ),
                        );
                      },
                    );
                  },
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(10),
                      side: MaterialStateProperty.all(
                        BorderSide(width: 5, color: Colors.white),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      minimumSize: MaterialStateProperty.all(Size(30, 60))),
                  icon: Icon(Icons.send_rounded, color: Colors.white, size: 30),
                  label: const Text(
                    "Bilgilerimi Kaydet",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
 */