import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/Details.dart';

class Armas extends StatefulWidget {

  @override
  _Armas createState() => _Armas();
}
 
 class _Armas extends State<Armas>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 220, 172),
        title: Text('Armas'),
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
                    'Escopeta corredera',
                    'Es una versión actualizada de la  escopeta. Mientras que es más pesada y su daño es menor, puede hacer más disparos antes de recargar.',
                    'Armas/escopeta.webp',
                    context),
                _buildCard(
                    'Lanza de metal',
                    'Es una versión avanzada y de metal de la lanza. Se diferencia de su homólogo de madera en que tiene durabilidad, y en que no se puede lanzar, haciéndolo menos versátil que la lanza; sin embargo, dura mas e inflige mayor daño.',
                    'Armas/lanza.webp',
                    context),
                _buildCard(
                    'Rifle de asalto',
                    'Este arma de largo alcance completamente automática almacena hasta 40 balas avanzadas. Puede utilizar cualquier accesorio excepto la mirilla telescópica, pero como todas las armas de fuego en ARK, solo puede utilizar un accesorio a la vez.',
                    'Armas/rifleligera.webp',
                    context),
                _buildCard(
                    'Lanzamisiles RPG',
                    'Se utiliza para disparar el  Misil RPG  y su daño puede variar pero daño base seria de 1500.',
                    'Armas/rpg.webp',
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







          


        
