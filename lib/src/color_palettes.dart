import 'package:flutter/material.dart';

//The default color palette will make the app look like a wireframe
class ColorPalette {
  Color primary;
  Color secondary;

  ColorPalette({
    this.primary = Colors.grey,
    this.secondary = Colors.grey
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