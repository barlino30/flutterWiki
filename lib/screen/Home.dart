import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/Armaduras.dart';
import 'package:flutter_application_2/screen/Armas.dart';
import 'package:flutter_application_2/screen/Criaturas.dart';
import 'package:flutter_application_2/screen/Details.dart';
import 'package:flutter_application_2/screen/Soporte.dart';

//TabBar---------------------------------------------------------------------------------------------------------------------
class TabHome extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<TabHome> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          Home(),
          Armaduras(),
          Soporte(),
          Criaturas(),
          Armas(),
         
        ],
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          child: Container(
            color: Colors.black54,
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black54, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
              ),
              indicatorColor: Colors.black54,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 24.0,
                  ),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(
                    Icons.add_moderator_rounded,
                    size: 24.0,
                  ),
                  text: 'Armaduras',
                ),
                Tab(
                  icon: Icon(
                    Icons.support_agent,
                    size: 24.0,
                  ),
                  text: 'Soporte',
                ),
                Tab(
                  icon: Icon(
                    Icons.bug_report_rounded,
                    size: 24.0,
                  ),
                  text: 'Criaturas',
                ),
                Tab(
                  icon: Icon(
                    Icons.auto_fix_normal_rounded,
                    size: 24.0,
                  ),
                  text: 'Armas',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
//----------------------------------------------------------------------------------------------------------------------------------------



//Home------------------------------------------------------------------------------------------------------------------------------------
class Home extends StatefulWidget {
  
  @override
  _Home createState() => _Home();
}
 
 class _Home extends State<Home>{

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //barra de titulo
        backgroundColor: Color.fromARGB(255, 242, 220, 172), //color de la barra
        title: Text("WikiArk"), //texto de la barra o titulo
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0,),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 0.8,
            children: <Widget>[
              _buildCard('Armadura de Pelaje', 
              'Armaduras/nieve.jpg', 
              'Es una armadura de nivel medio que ofrece una moderada protección física y una extrema protección contra el frío.', context),
              
              _buildCard('Armadura Tek', 
              'Armaduras/tek.jpg', 
              'Está diseñada para jugadores avanzados, y ofrece la mejor protección física del juego.', context),
             
              _buildCard('Basilisco', 
              'Criaturas/basilisco.png', 
              'Normalmente espera escondida bajo tierra, preparando su emboscada y esperando a que su presa se acerque antes de salir a la superficie.', context),
             
              _buildCard('Managarmr', 
              'Criaturas/managarmr.png', 
              'El Managarmr tiende a bombardear imprudentemente todo lo que puede ver, haciendo un uso efectivo de sus habilidades.', context),
              
              _buildCard('Rifle de Asalto', 
              'Armas/rifleligera.webp', 
              'Este arma de largo alcance completamente automática almacena hasta 40 balas avanzadas. Puede utilizar cualquier accesorio excepto la mirilla telescópica, pero como todas las armas de fuego en ARK, solo puede utilizar un accesorio a la vez.', context),
              
              _buildCard('Lanzamisiles RPG', 
              'Armas/rpg.webp', 
              'Se utiliza para disparar el  Misil RPG  y su daño puede variar pero daño base seria de 1500.', context),
            ],
            ),
          )
        ],
      ),

 );
  }

  Widget _buildCard(String name, String imgPath, String description, context){
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
                blurRadius: 5.0
              )
            ],
            color: Colors.white
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
                ),
                Hero(
                  tag: imgPath, 
                  child: Container(
                    height: 180.0,//tamaño imagen
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imgPath),
                        fit:BoxFit.contain
                      )
                    ),)
                  ),
                  SizedBox(height: 7.0),
                  Text(name,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12.0
                  ),
                  ),

                Text(description,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 10.0
                  ),
                  )

            ]
          ),
        ),
      ),
    );
  }

}