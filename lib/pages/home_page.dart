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
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image(image: AssetImage('../assets/home/Alphabet_icon.png')),
                      SizedBox(height: 80.0,),
                      Text("Alphabet", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image(image: AssetImage('../assets/login/Numbers_icon.png')),
                      SizedBox(height: 30.0,),
                      Text("Numbers", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image(image: AssetImage('../assets/home/Colors_icon.png')),
                      SizedBox(height: 80.0,),
                      Text("Colors", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image(image: AssetImage('../assets/home/Shapes_icon.png')),
                      SizedBox(height: 80.0,),
                      Text("Shapes", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image(image: AssetImage('../assets/home/Body_icon.png')),
                      SizedBox(height: 80.0,),
                      Text("Body parts", style: new TextStyle(fontSize: 17.0))
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