import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:olabildigince_ucuz/bilet/biletaramaanasayfa.dart';
import 'package:olabildigince_ucuz/paylas%C4%B1m/arama.dart';

class BiletArama extends StatefulWidget {
  const BiletArama({Key? key}) : super(key: key);

  @override
  State<BiletArama> createState() => _BiletAramaState();
}

class _BiletAramaState extends State<BiletArama> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    BiletAramaAnaSayfa(),
    Arama(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BİLET AL"),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: bottomnvgbar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  BottomNavigationBar bottomnvgbar() {
    return BottomNavigationBar(
      elevation: 10,
      backgroundColor: Colors.blue.shade900,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Bilet Ara',
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.ticketPercent),
          label: 'Bilet İşlemleri',
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
