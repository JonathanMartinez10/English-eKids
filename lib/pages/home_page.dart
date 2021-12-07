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
      body: Container(
        //Menu de contenido
        padding: const EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children:[
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const[
                      Image(image: AssetImage('assets/home/Alphabet_icon.png'), width: 85),
                      SizedBox(height:5.0,),
                      Text("Alphabet", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const[
                      Image(image: AssetImage('assets/home/Numbers_icon.png'), width: 85),
                      SizedBox(height: 5.0,),
                      Text("Numbers", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const[
                      Image(image: AssetImage('assets/home/Colors_icon.png'), width: 85),
                      SizedBox(height: 5.0,),
                      Text("Colors", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const[
                      Image(image: AssetImage('assets/home/Shapes_icon.png'), width: 85),
                      SizedBox(height: 5.0,),
                      Text("Shapes", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const[
                      Image(image: AssetImage('assets/home/Body_icon.png'), width: 85),
                      SizedBox(height: 5.0,),
                      Text("Body parts", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            )
         ],
        ),
     ),
     bottomNavigationBar: const BottomNavigationBarPrincipal(),
   );
  }
}