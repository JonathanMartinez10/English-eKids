import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English kids'),
        backgroundColor: Colors.cyan[800],
        automaticallyImplyLeading: false,
      ),
      body:  const Center(        
        child: Text('Books page'),
     ),
    );
  }
}