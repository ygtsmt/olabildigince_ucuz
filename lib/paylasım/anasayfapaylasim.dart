import 'package:flutter/material.dart';
import 'arama.dart';
import 'yayinla.dart';

class AnasayfaStful extends StatefulWidget {
  const AnasayfaStful({Key? key}) : super(key: key);

  @override
  State<AnasayfaStful> createState() => _AnasayfaStfulState();
}

class _AnasayfaStfulState extends State<AnasayfaStful> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Arama(),
    Yayinla(),
    //ProfilIcerigi()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final String kullaniciadi = "yigit";
  final String kullaniciEmail = "yigitsametolmez@outlook.com";
  @override
  Widget build(BuildContext context) {
    DateTime suan = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: const Text(
          "YOLCULUK PAYLAŞIMI",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: bottomnvgbar(),
    );
  }

  BottomNavigationBar bottomnvgbar() {
    return BottomNavigationBar(
      elevation: 10,
      backgroundColor: Colors.blue.shade900,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Yolculuk Ara',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          label: 'Yolculuk Yayınla',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      selectedIconTheme: const IconThemeData(
        size: 30,
      ),
      unselectedItemColor: Colors.white,
    );
  }
}
