import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: AnimationApp()));

class AnimationApp extends StatefulWidget {
  @override
  _AnimationAppState createState() => _AnimationAppState();
}

class _AnimationAppState extends State<AnimationApp> {

  String logo = 'assets/images/Logo_MS_blanco.png';
  Color backgroundColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: Duration(seconds: 2),
        decoration: BoxDecoration(
          color: backgroundColor,
          image: DecorationImage(
            image: ExactAssetImage(logo),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              backgroundColor= Colors.white;
              logo = 'assets/images/Logo_MS_color.png';
            });
          },
        ),
      )
    );
  }
}
