import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/Home.dart';
import 'package:flutter_application_2/screen/Criaturas.dart';
import 'package:flutter_application_2/screen/Armaduras.dart';
import 'package:flutter_application_2/screen/Armas.dart';
import 'package:flutter_application_2/screen/Soporte.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/Home': (context) => TabHome(),
        '/Criaturas':(context) => Criaturas(),
        '/Armaduras':(context) => Armaduras(),
        '/Armas':(context) => Armas(),
        '/Soporte':(context) => Soporte(),
      },
      initialRoute: '/Home',
    );
  }
}

