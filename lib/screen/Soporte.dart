import 'package:flutter/material.dart';

class Soporte extends StatefulWidget {
  @override
  _Soporte createState() => _Soporte();
}
 
 class _Soporte extends State<Soporte>{

   String _texto= 'este texto';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 220, 172),
        title: Text('Soporte'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        
        Container(
          child: Text(''),
        ),

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            style: const TextStyle(fontSize: 20),
            decoration: const InputDecoration(
              border: InputBorder.none
            ),
          ),
        ),

        Container(
          child: Text(''),
        ),

        Container(
          child: RaisedButton(
            child: Text('Enviar'),
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => AlertDialog(
                  title: Text('Tu petición ha sido recibida'),
                  content: Text(
                    'Enviado',
                    style: TextStyle(color: Colors.white),
                  ),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/Home');
                      },
                      child: Text('Ok'),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancelar'),
                    ),
                  ],
                ),
              );
            },
            color: Color.fromARGB(255, 242, 220, 172),
          ),
        ),
    ]),
    );
  }
}
