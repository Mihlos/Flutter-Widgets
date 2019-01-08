# Flutter-Widgets
Some Flutter widgets to practice.

## Textfield() https://docs.flutter.io/flutter/material/TextField-class.html
https://medium.com/flutter-community/a-deep-dive-into-flutter-textfields-f0e676aaab7a

- Permite al usuario ingresar texto.
- **onChanged** .-Se llama cada vez que el usuario cambia el texto.
``` Dart
TextField(
  onChanged: (text) {
    //DO SOMETHING;
  },
  ```
- **onSubmited** .- Se llama cuando se ha terminado de introducir texto para realizar acciones con dicho texto.
- **Controller** .- El texto mostrado se controla. Para un texto inicial usar el Controller. (mas en el ejemplo y en el link a Medium.
- **decoration**: InputDecoration() .- Nos permite cambiar el aspecto del textfield, por defecto la linea horizontal. Se pueden poner iconos etc.
  - hintText .- "Ingrese el texto aquí". (Iconos, colores, cursor, teclado...)
  
  **Problemas con OnSubmited**
  No entidía muy bien como se usaba. El artículo de medium me ha ayudado a comprenderlo.
  ```Dart
  onSubmitted: (value) {},
  ```

## AlertDialog()  https://docs.flutter.io/flutter/material/AlertDialog-class.html
https://medium.com/@nils.backe/flutter-alert-dialogs-9b0bb9b01d28

- Permite mostrar un pop up, alert... Que realiza varias funciones de mensaje, pregunta...
- **ShowDialog** .-
``` Dart
showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog();
        });
```
En la propiedad AlertDialog se puede configurar totalmente la alerta:
- title
- content
- actions //Recibe una serie de Widgets. En la que incluyo un botón.

``` Dart
AlertDialog dialog = AlertDialog(
      title: Text('Alerta enviada:'),
      content: Text(text), //Alert dialog body
      actions: <Widget>[
        FlatButton.icon(
            onPressed: () {
              print('hola');
              Navigator.of(context).pop();  //Close alert
            },
            icon: Icon(Icons.print),
            label: Text('Print'))
      ],
    );
```

## Stepper()  https://docs.flutter.io/flutter/material/Stepper-class.html
https://medium.com/flutterpub/steppers-and-form-in-flutter-49cda857230c

- Muestra una serie de pasos para ir realizando acciones punto a punto.
- **type:** StepperType.
- **currentStep:**
- **steps:** //El propio Widget, los pasos.
	- Declarar los steps:
	``` Dart
	List<Step> mySteps = [
    Step(title: Text('Paso 1'), content: Text('Aprender Flutter')),
    Step(title: Text('Paso 2'), content: Text('Desarrollar App')),
    Step(title: Text('Paso 3'), content: Text('Publicar App')),
	];
	``` 
- **onStepCancel: (){}**
- **onStepContinue: (){}**
- **onStepTapper: (step){}**