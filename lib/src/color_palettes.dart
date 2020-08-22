import 'package:flutter/material.dart';

//The default color palette will make the app look like a wireframe
class ColorPalette {
  Color lightBg = Colors.white;
  Color lightFg = Colors.white70;

  Color darkBg = Colors.black;
  Color darkFg = Colors.white70;

  Color primary = Colors.brown;
  Color secondary = Colors.brown;

  ColorPalette({
    //this.mainLight = Colors.white, TODO - add the remaining fields to the constructor
    //this.mainDark = Colors.black,
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