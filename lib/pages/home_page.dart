import 'package:flutter/material.dart';
//Mis importaciones
import 'package:english_ekids/widgets/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English kids'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text('Hola Mundo'),
     ),
     bottomNavigationBar: const BottomNavigationBarPrincipal(),
   );
  }
}