import 'package:flutter/material.dart';

//The default color palette will make the app look like a wireframe
class ColorPalette {
  Color mainLight = Colors.white;
  Color mainDark = Colors.black;
  Color primary = Colors.black;
  Color secondary = Colors.black;

  ColorPalette({
    this.mainLight = Colors.white,
    this.mainDark = Colors.black,
    this.primary = Colors.brown,
    this.secondary = Colors.brown
  });

  ColorPalette.defaults();
}

//TODO - add a colorPalette for all base MaterialThemes and allow users to extend/create their own from there
class PinkPalette extends ColorPalette {
  PinkPalette() : super(
    primary: Colors.pink,
    secondary: Colors.pink
  );
}

class GreenPalette extends ColorPalette {
  GreenPalette() : super(
    primary: Colors.green,
    secondary: Colors.green
  );
}