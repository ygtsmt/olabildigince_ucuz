import 'package:flutter/material.dart';
import 'anasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        backgroundColor: Colors.blue.shade900,
        primaryColor: Colors.blue.shade900,
        appBarTheme: AppBarTheme(
          
          color: Colors.blue,
          centerTitle: true,
          titleTextStyle:const TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
        ),
      ),
      home:const AnaSayfa(),
    );
  }
}
