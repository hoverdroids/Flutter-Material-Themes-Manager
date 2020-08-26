library material_themes_manager;

import 'package:flutter/material.dart';
import 'package:material_themes_manager/src/dark_theme_group.dart';
import 'package:material_themes_manager/src/light_theme_group.dart';
import 'package:material_themes_manager/src/theme_group.dart';

class MaterialThemesManager extends ChangeNotifier {

  bool isDarkModeEnabled = false;
  ThemeGroup _darkThemeGroup = DarkThemeGroup();
  ThemeGroup _lightThemeGroup = LightThemeGroup();

  updateColorPalette(ColorPalette colorPalette) {
    _darkThemeGroup.updateColorPalette(colorPalette);
    _lightThemeGroup.updateColorPalette(colorPalette);
    notifyListeners();
  }
  
  void updateDarkModeEnabled(bool isDarkModeEnabled) {
    this.isDarkModeEnabled = isDarkModeEnabled;
    notifyListeners();
  }

  ThemeData getTheme(ThemeGroupType type) {
    return isDarkModeEnabled ? _darkThemeGroup.theme(type) : _lightThemeGroup.theme(type);
  }

  ThemeData getPrimaryTheme() {
    return isDarkModeEnabled ? _darkThemeGroup.theme(ThemeGroupType.POM) : _lightThemeGroup.theme(ThemeGroupType.POM);
  }

  ThemeData getPrimaryLightTheme() {
    return _lightThemeGroup.theme(ThemeGroupType.POM);
  }

  ThemeData getPrimaryDarkTheme() {
    return _darkThemeGroup.theme(ThemeGroupType.POM);
  }

  ThemeMode getThemeMode() {
    return isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light;
  }
}

enum ThemeGroupType {
  MOM,  //MAIN_ON_MAIN,         //e.g  Light mode with gray text, Dark mooe with white text
  POM,  //PRIMARY_ON_MAIN,      //e.g. Light/Dark mode Primary color
  SOM,  //SECONDARY_ON_MAIN,    //e.g. Light/Dark mode secondary color
  MOP,  //MAIN_ON_PRIMARY,
  POP,  //PRIMARY_ON_PRIMARY,
  SOP,  //SECONDARY_ON_PRIMARY,
  MOS,  //MAIN_ON_SECONDARY,
  POS,  //PRIMARY_ON_SECONDARY,
  SOS,  //SECONDARY_ON_SECONDARY,
  MOI,  //MAIN_ON_IMAGE,
  POI,  //PRIMARY_ON_IMAGE,
  SOI,  //SECONDARY_ON_IMAGE
}

enum ElevationLevel {
  NONE, LOW, MEDIUM, HIGH, EXTREME
}

//0dp, 2dp, 6dp, 12dp, 24dp

enum IconSize {
  SMALL, DEFAULT, LARGE
}

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