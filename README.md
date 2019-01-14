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

## Tabs() https://docs.flutter.io/flutter/material/TabBar-class.html
https://medium.com/@worthply/flutter-tab-bar-60cb9848ad08
https://flutterdoc.com/widgets-tabbar-5f2ae6777ee4

- Pestañas que se suelen incluir en la appBar en bottom (bottom: TabBar()). 

- Es imprescindible especificar un controlador para indicar el nº de pestañas etc
- Con el **DefaultTabController** ya está todo configurado.
- Lo primero que me llama la atencion es que empezamos con el DefaultTabControler y su hijo es el Scaffold
hasta ahora tod iba incluido en el Scaffold.

- **length** the number of tabs that our controller is displaying
- **TabBarView** Para especificar lo que se ve en cada pestaña.

``` Dart
home: DefaultTabController(
        //En lugar de poner una cantidad fija de tabs crea un array para ir añadiendo.
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title:  Text('Tabbed AppBar'),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map((Choice element) {
                return Tab(
				
				
				
	body: TabBarView(			
```

## Navigator() https://docs.flutter.io/flutter/widgets/Navigator-class.html
https://flutter.io/docs/cookbook/navigation/navigation-basics
https://medium.com/flutter-community/flutter-push-pop-push-1bb718b13c31

Navigator nos permite crear una ruta con las pantallas por las que pasamos en la aplicacion.
Funciona como el boton de atrás de cualquier navegador. Va poniendo la ultima página donde se ha estado en la
primera posición de la ruta. Para ir hacia atras borramos la primera posición. Tambien podemos ir a una posición directamente.

```
onPressed: () {
    Navigator.push(
		context,
        MaterialPageRoute(builder: (context) => SecondScreen()));
}),
```
El metodo **push** añade una ruta al stack de rutas controlado por **Navigator**
**MaterialPageRoute** La ruta se la indicamos con este objeto porque ya nos proporciona una animacion y le indicamos la ruta.

Para volver podemos indicar **Navigator.pop** para borrar la última ruta y así volverá a la anterior.





