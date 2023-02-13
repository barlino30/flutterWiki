import 'package:flutter/material.dart';
 
 class Details extends StatelessWidget{
final nombreTitulo, assetPath, descriptions;

Details({this.assetPath, this.nombreTitulo, this.descriptions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 220, 172),
        title: Text('Details'),
      ),

      body: Center(
        child:Column(
          children: <Widget>[
            Hero(
              tag: nombreTitulo, 
              child: Text(nombreTitulo)),
            Text(''),
            Hero(tag: assetPath,
             child: Image.asset(assetPath)),
            Text(''),
            Hero(tag: descriptions,
              child: Text(descriptions))
          ],
          ) 
        ),
    );
  }
}