import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../medal/views/medal_page.dart';
import '../../profile/views/profile_page.dart';
import 'levels_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = [
    LevelsPage(),
    MedalPage(),
    ProfilePage(),
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
          title: const Text('Musicando'),
          backgroundColor: Colors.purple,
          actions: [
            IconButton(
              icon: Image.asset('assets/images/personagem.png'),
              onPressed: () => Modular.to.navigate('/narrative'),
            ),
          ]),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 32),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.audiotrack, size: 32),
              label: 'Instrumentos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face, size: 32),
              label: 'Perfil',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.purple,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
