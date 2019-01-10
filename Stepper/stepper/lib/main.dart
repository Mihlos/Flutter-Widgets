import 'package:flutter/material.dart';
import 'steps.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentStep = 0;

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
              //Indica cual es el paso actual del stepper.
              currentStep: this._currentStep,
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
