import 'package:flutter/material.dart';

//The default color palette will make the app look like a wireframe
class ColorPalette {
  Color lightBg = Colors.white;
  Color lightFg = Colors.white70;
  Color lightText = Colors.grey;
  Color lightTextImportant = Colors.grey[800];
  Color lightPrimaryContrast = Colors.white70;
  Color lightPrimaryContrastImportant = Colors.white;

  Color darkBg = Colors.black;
  Color darkFg = Colors.grey[800];
  Color darkText = Colors.white70;
  Color darkTextImportant = Colors.white;
  Color darkPrimaryContras = Colors.white;
  Color darkPrimaryContrast = Colors.grey[800];
  Color darkPrimaryContrastImportant = Colors.black;

  Color primary;
  Color secondary;

  ColorPalette({
    //this.mainLight = Colors.white, TODO - add the remaining fields to the constructor
    //this.mainDark = Colors.black,
    this.primary = Colors.deepPurple,
    this.secondary = Colors.deepPurple
  });
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