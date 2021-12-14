import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:english_ekids/pages/signup_page.dart';

//Mis importaciones
import 'package:english_ekids/pages/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'welcome_page',
      routes:{
        'welcome_page' : ( _ ) => const WelcomePage(),
        'login_page'   : ( _ ) => LoginPage(),
        'signup_page'  : ( _ ) => SignUpPage(),
        'home_page'    : ( _ ) => const HomePage(),
        'books_page'   : ( _ ) => const BooksPage(),
        'videos_page'  : ( _ ) => const VideosPage(),
        'settings_page': ( _ ) => const SettingsPage(),
      },
    );
  }
}