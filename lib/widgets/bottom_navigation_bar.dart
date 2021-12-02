import 'package:flutter/material.dart';
import 'package:english_ekids/pages/pages.dart';

class BottomNavigationBarPrincipal extends StatefulWidget {
  const BottomNavigationBarPrincipal ({ Key? key }) : super(key: key);

  @override
  State<BottomNavigationBarPrincipal> createState() => _BottomNavigationBarPrincipalState();
}

class _BottomNavigationBarPrincipalState extends State<BottomNavigationBarPrincipal> {

  int currentindex=0;

  final screens=[
    const HomePage(),
    const BooksPage(),
    const VideosPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //type: BottomNavigationBarType.fixed,
      iconSize: 36,
      currentIndex: currentindex,
      onTap: (index) => setState(()=> currentindex=index),
      unselectedItemColor: Colors.grey[400],
      items: [
        const BottomNavigationBarItem(
          icon:  Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.deepPurple,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.book),
          label: 'Books',
          backgroundColor: Colors.cyan[800],
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.play_arrow),
          label: 'Play',
          backgroundColor: Colors.pink[800],
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.settings_applications_sharp),
          label: 'Ajustes',
          backgroundColor: Colors.blue.shade800,
        ),
      ],
    );
  }
}