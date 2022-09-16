/* import 'package:flutter/material.dart';
import 'package:hataverme/ilanlar.dart';
import 'package:hataverme/yayinla.dart';







class Sabitler {
  static const Color anaRenk = Colors.blue;

  static ilankoy(
      {@required String? nereden,
      @required nereye,
      @required tarih,
      @required kalkissaati}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          alignment: Alignment.center,
          height: 180,
          color: Colors.blue.shade900,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      nereden.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 12,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.arrow_forward, size: 50, color: Colors.white),
                      Text(
                        tarih.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Text(
                        kalkissaati.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      TextButton.icon(
                        onPressed: () {
                     
                        },
                        icon: const Icon(
                          Icons.info,
                          size: 40,
                          color: Colors.white,
                        ),
                        label: const Text(
                          "İLETİŞİM BİLGİLERİ",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      nereye.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
  static textfieldkoy(
      controllerdegeri,
      TextInputAction? textbutonu,
      TextInputType klavyetipi,
      String labeltexti,
      int maksimumsatir) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        /*   onChanged: (String deger) {
                print(deger);
              }, yazılan herseyı degerın ıcıne atar */
        keyboardType: klavyetipi,
        textInputAction: textbutonu,
        decoration: InputDecoration(
          labelText: labeltexti,
          labelStyle:const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder:const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 5.0),
          ),
          enabledBorder:const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 5.0),
          ),
          alignLabelWithHint: true,
        ),
        textAlign: TextAlign.center,
        controller: controllerdegeri,
        maxLines: maksimumsatir,
      ),
    );
  }

  
}
class sss extends Yayinla{ 
  
 } */