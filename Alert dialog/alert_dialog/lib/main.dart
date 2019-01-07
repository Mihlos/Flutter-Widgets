import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final TextEditingController control = TextEditingController();

  void _showAlert(String text) {
    AlertDialog dialog = AlertDialog(
      title: Text('Alerta enviada:'),
      content: Text(text), //Alert dialog body
      actions: <Widget>[
        FlatButton.icon(
            onPressed: () {
              print(text);
              Navigator.of(context).pop(); //Close alert
            },
            icon: Icon(Icons.print),
            label: Text('Print'))
      ],
    );

    showDialog(
        context: context,
        barrierDismissible: false, //No poder quitar la alerta.
        builder: (BuildContext context) {
          return dialog;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text('Alert dialog', style: TextStyle(color: Colors.blueAccent)),
          backgroundColor: Colors.yellow,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Ingrese el texto aquí.',
                      icon: Icon(Icons.add_alert)),
                  controller: control,
                ),
                RaisedButton(
                    child: Text('Ver alerta'),
                    onPressed: () {
                      _showAlert(control.text);
                    })
              ],
            ),
          ),
        ));
  }
}
