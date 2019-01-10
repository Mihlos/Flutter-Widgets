import 'package:flutter/material.dart';

List<Step> mySteps = [
  Step(
      isActive: true,
      title: Text(
        'Paso 1',
        style: TextStyle(color: Colors.orangeAccent, fontSize: 20.0),
      ),
      content: Row(
        children: <Widget>[
          Icon(
            Icons.bubble_chart,
            color: Colors.blue,
          ),
          Text('Aprender Flutter')
        ],
      )),
  Step(
      isActive: true,
      title: Text(
        'Paso 2',
        style: TextStyle(color: Colors.orangeAccent, fontSize: 20.0),
      ),
      content: Row(
        children: <Widget>[
          Icon(
            Icons.developer_mode,
            color: Colors.yellow,
          ),
          Text('Desarrolla Apps')
        ],
      )),
  Step(
      isActive: true,
      title: Text(
        'Paso 3',
        style: TextStyle(color: Colors.orangeAccent, fontSize: 20.0),
      ),
      content: Row(
        children: <Widget>[
          Icon(
            Icons.monetization_on,
            color: Colors.lightGreenAccent,
          ),
          Text('Publica Apps')
        ],
      )),
];