# Flutter-Widgets
Some Flutter widgets to practice.

### Textfield() https://docs.flutter.io/flutter/material/TextField-class.html
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

