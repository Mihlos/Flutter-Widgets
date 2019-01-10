/*Este ejemplo está por encima de mi nivel actual pero me ha parecido espectacular
para estudiarlo. Voy a ir poniendo comentarios.*/

import 'package:flutter/material.dart';

void main() => runApp(MyTabBars());

//No entiendo como un Stateless puede repintar la pantalla...
//veo que DefaultTabControler es un Stateful.

class MyTabBars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*Lo primero que me llama la atencion es que empezamos con el DefaultTabControler y su hijo es el Scaffold
      hasta ahora tod iba incluido en el Scaffold.*/

      home: DefaultTabController(
        //En lugar de poner una cantidad fija de tabs crea un array para ir añadiendo. Brillante.
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title:  Text('Tabbed AppBar'),
            bottom: TabBar(
              isScrollable: true,
              //.map((){})Produce una lista despues de transformar cada elemento de una lista dada.
              //donde pone element ponia choice, lo he cambiado para hacer prueba y quedarme claro.
              tabs: choices.map((Choice element) {
                return Tab(
                  text: element.title,
                  icon: Icon(element.icon),
                );
              }).toList(),
            ),
          ),
          //El TabBarView es la segunda parte del TabBar
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: EdgeInsets.all(16.0),
                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

//Crea un objeto eleccion. Cualquier cosa puede ser un objeto y esto es el mejor ejemplo.
//Crea su constructor, para tener el tipo de objeto e ir creandolos en el array.
class Choice {
  Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

 List<Choice> choices =  <Choice>[
   Choice(title: 'CAR', icon: Icons.directions_car),
   Choice(title: 'BICYCLE', icon: Icons.directions_bike),
   Choice(title: 'BOAT', icon: Icons.directions_boat),
   Choice(title: 'BUS', icon: Icons.directions_bus),
   Choice(title: 'TRAIN', icon: Icons.directions_railway),
   Choice(title: 'WALK', icon: Icons.directions_walk),
   Choice(title: 'PLANE', icon: Icons.airplanemode_active)

];

class ChoiceCard extends StatelessWidget {
  ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}

