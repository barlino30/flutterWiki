import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/Details.dart';

class Armaduras extends StatefulWidget {

  @override
  _Armaduras createState() => _Armaduras();
}
 
 class _Armaduras extends State<Armaduras>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 220, 172),
        title: Text('Armaduras'),
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
                    'Armadura de metal',
                    'Es una armadura de juego tardío que ofrece alta protección física y protección moderada contra el frío.',
                    'Armaduras/hierro.webp',
                    context),
                _buildCard(
                    'Armadura de pelaje',
                    'Es una armadura de nivel medio que ofrece una moderada protección física y una extrema protección contra el frío. ',
                    'Armaduras/nieve.jpg',
                    context),
                _buildCard(
                    'Armadura de quitina',
                    'Es un conjunto de armadura de nivel medio que se puede desbloquear en lvl 37. ',
                    'Armaduras/quitina.webp',
                    context),
                _buildCard(
                    'Armadura Tek',
                    'Está diseñada para jugadores avanzados, y ofrece la mejor protección física del juego. ',
                    'Armaduras/tek.jpg',
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
