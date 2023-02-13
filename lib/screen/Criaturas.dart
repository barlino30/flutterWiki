import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/Details.dart';

class Criaturas extends StatefulWidget {

  @override
  _Criaturas createState() => _Criaturas();
}
 
 class _Criaturas extends State<Criaturas>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 220, 172),
        title: Text('Criaturas'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard(
                    'Basilisco',
                    'Normalmente espera escondida bajo tierra, preparando su emboscada y esperando a que su presa se acerque antes de salir a la superficie.',
                    'Criaturas/basilisco.png',
                    context),
                _buildCard(
                    'Búho de las Nieves',
                    'El majestuoso Búho de las Nieves es un búho gigante que recorre la Cúpula de Nieve, ocasionalmente aterrizando para matar a un animal desprevenido o para descansar.',
                    'Criaturas/buho.png',
                    context),
                _buildCard(
                    'Plesiosaur',
                    'Los plesiosaurios nadan en grupos de dos o tres en las profundidades del océano, sin salir nunca a la superficie.',
                    'Criaturas/plesio.png',
                    context),
                _buildCard(
                    'Managarmr',
                    'El Managarmr tiende a bombardear imprudentemente todo lo que puede ver, haciendo un uso efectivo de sus habilidades.',
                    'Criaturas/managarmr.png',
                    context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String description, String imgPath, context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
            builder: (context)=> Details(
              nombreTitulo: name,
              assetPath: imgPath,
              descriptions: description,
            )
            )));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ),
            Hero(
                tag: imgPath,
                child: Container(
                  height: 180.0, //tamaño imagen
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.contain)),
                )),
            SizedBox(height: 7.0),
            Text(
              name,
              style: TextStyle(color: Colors.black54, fontSize: 12.0),
            ),
            SizedBox(height: 7.0),
            Text(
              description,
              style: TextStyle(color: Colors.black54, fontSize: 10.0),
            )
          ]),
        ),
      ),
    );
  }
}
