import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class ShapesPage extends StatelessWidget {
  const ShapesPage({Key? key}) : super(key: key);

  static final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English kids'),
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        //Menu de contenido
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  _speak("hexagon");
                },
                splashColor: Colors.deepPurple,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Image(
                          image: AssetImage('assets/shapes/hexagon.png'),
                          width: 75),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Hexagon", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  _speak("Square");
                },
                splashColor: Colors.deepPurple,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Image(
                          image: AssetImage('assets/shapes/Cuadrado.png'),
                          width: 75),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Square", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  _speak("Octagon");
                },
                splashColor: Colors.deepPurple,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Image(
                          image: AssetImage('assets/shapes/octagono.png'),
                          width: 75),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Octagon", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  _speak("Rectangle");
                },
                splashColor: Colors.deepPurple,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Image(
                          image: AssetImage('assets/shapes/rectangle.png'),
                          width: 75),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Rectangle", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  _speak("Trapeze");
                },
                splashColor: Colors.deepPurple,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Image(
                          image: AssetImage('assets/shapes/Trapecio.png'),
                          width: 75),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Trapeze", style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _speak(value) async {
  await ShapesPage.flutterTts.setLanguage("en-US");
  await ShapesPage.flutterTts.setPitch(1);
  await ShapesPage.flutterTts.speak(value);
}
