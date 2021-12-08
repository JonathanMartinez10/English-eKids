import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English kids'),
        backgroundColor: Colors.blue.shade800,
        automaticallyImplyLeading: false,
      ),
      body:  const Center(        
        child: Text('Settings page'),
     ),
    );
  }
}