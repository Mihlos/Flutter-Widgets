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
  String inputText = "";
  final TextEditingController control = TextEditingController();

  void onEnviado(String text) {
    print(text);
    setState(() {
      inputText = inputText + "\n" + text;
      control.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Textfield'),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Ingrese el texto aquí.',
                        icon: Icon(Icons.wrap_text)),
                    controller: control,
                    onSubmitted: (value) {
                      onEnviado(value);
                    }
                    //value es una variable, puede ser cualquier nombre.
                    ),
                Text(inputText),
              ],
            ),
          ),
        ));
  }
}
