import 'package:flutter/material.dart';

class Sabitler {
  static anaSayfaButonuKoy({
    required String butonyazisi,
    required String resimyolu,
    required String butonbasligi,
  }) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 3, color: Colors.blue.shade900)),
      child: InkWell(
        onTap: () {}, // Handle your callback
        child: Ink(
            child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    resimyolu,
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
                      butonbasligi,textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.w900,
                          fontSize: 18,),
                    ),
                  ),
                  Text(
                    butonyazisi,
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
    );
  }
}
