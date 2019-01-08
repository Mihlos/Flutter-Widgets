import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentStep = 0;

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Stepper'),
          ),
          body: Container(
            child: Stepper(
              type: StepperType.vertical,
              currentStep: this._currentStep,
              //Indica cual es el paso actual del stepper.
              steps: mySteps,
              onStepContinue: () {
                setState(() {
                  if (_currentStep < mySteps.length - 1) {
                    _currentStep++;
                  } else {
                    _currentStep = 0;
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (_currentStep > 0) {
                    _currentStep--;
                  }
                });
              },
              onStepTapped: (step) {
                setState(() {
                  _currentStep = step;
                });
              },
            ),
          )),
    );
  }
}
