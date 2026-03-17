// Aplicativo de introdução ao uso de Widgets de Layout (columns, Rows, Stacks, Containers)

//Void main
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MaterialApp(
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Widgets de Layout"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.indigo,
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.star),
                  ],
                ),
                //Fechei a stak mas ainda estou na "row"
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.blueAccent,
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.circle_outlined),
                  ],
                ),
                //Ainda dentro da mesma linha, outro stack
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.cyanAccent,
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.star),
                  ],
                ),
              ],
            ),
            
            //2ª LINHA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.cyanAccent,
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.star),
                  ],
                ),
                //Fechei a stak mas ainda estou na "row"
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.indigo,
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.circle_outlined),
                  ],
                ),
                //Ainda dentro da mesma linha, outro stack
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.blueAccent,
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.star),
                  ],
                ),
              ],
            ),

            // 3ª LINHA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.blueAccent,
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.star),
                  ],
                ),
                //Fechei a stak mas ainda estou na "row"
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.cyanAccent,
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.circle_outlined),
                  ],
                ),
                //Ainda dentro da mesma linha, outro stack
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.indigo,
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.star),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}