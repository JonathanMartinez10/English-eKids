import 'package:flutter/material.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English kids'),
        backgroundColor: Colors.pink[800],
        automaticallyImplyLeading: false,
      ),
      body:  const Center(        
        child: Text('Videos page'),
     ),
    );
  }
}