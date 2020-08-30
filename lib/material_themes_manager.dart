library material_themes_manager;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_themes_manager/src/dark_theme_group.dart';
import 'package:material_themes_manager/src/light_theme_group.dart';
import 'package:material_themes_manager/src/theme_group.dart';

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
class MaterialThemesManager with ChangeNotifier, DiagnosticableTreeMixin {

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

  void toggleDarkModeEnabled() {
    this.isDarkModeEnabled = !this.isDarkModeEnabled;
    notifyListeners();
  }

  ThemeData getTheme(ThemeGroupType type) {
    return isDarkModeEnabled ? _darkThemeGroup.theme(type) : _lightThemeGroup.theme(type);
  }

  ThemeData getPrimaryTheme() {
    return isDarkModeEnabled ? _darkThemeGroup.theme(ThemeGroupType.POM) : _lightThemeGroup.theme(ThemeGroupType.POM);
  }

  ThemeData getPrimaryLightTheme() {
    return _lightThemeGroup.theme(ThemeGroupType.MOM);
  }

  ThemeData getPrimaryDarkTheme() {
    return _darkThemeGroup.theme(ThemeGroupType.MOM);
  }

  ThemeMode getThemeMode() {
    return isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light;
  }

  Widget getBackgroundGradient(BackgroundGradientType type) {
    return isDarkModeEnabled ? _darkThemeGroup.backgroundGradient(type) : _lightThemeGroup.backgroundGradient(type);
  }

  /// Makes `MaterialThemesManager` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('isDarkModeEnabled', isDarkModeEnabled.toString()));
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

enum BackgroundGradientType {
  MAIN_BG,
  MAIN_FG,
  PRIMARY,
  SECONDARY
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
  Color lightBgAccent = Colors.white70;
  Color lightFg = Colors.white70;
  Color lightFgAccent = Colors.white60;
  Color lightText = Colors.grey;
  Color lightTextImportant = Colors.grey[800];
  Color lightPrimaryContrast = Colors.white70;
  Color lightPrimaryContrastImportant = Colors.white;

  Color darkBg = Colors.black;
  Color darkBgAccent = Colors.black12;
  Color darkFg = Colors.grey[800];
  Color darkFgAccent = Colors.grey[700];
  Color darkText = Colors.white70;
  Color darkTextImportant = Colors.white;
  Color darkPrimaryContras = Colors.white;
  Color darkPrimaryContrast = Colors.grey[800];
  Color darkPrimaryContrastImportant = Colors.black;

  Color primary;
  Color primaryAccent;
  Color secondary;
  Color secondaryAccent;

  ColorPalette({
    //this.mainLight = Colors.white, TODO - add the remaining fields to the constructor
    //this.mainDark = Colors.black,
    this.primary = Colors.deepPurple,
    this.primaryAccent = Colors.deepPurpleAccent,
    this.secondary = Colors.deepOrange,
    this.secondaryAccent = Colors.deepOrangeAccent
  });
}

//TODO - add a colorPalette for all base MaterialThemes and allow users to extend/create their own from there
class PinkPalette extends ColorPalette {
  PinkPalette() : super(
      primary: Colors.pink,
      primaryAccent: Colors.pinkAccent,
      secondary: Colors.pink,
      secondaryAccent: Colors.pinkAccent
  );
}

class GreenPalette extends ColorPalette {
  GreenPalette() : super(
      primary: Colors.green,
      primaryAccent: Colors.greenAccent,
      secondary: Colors.green,
      secondaryAccent: Colors.greenAccent
  );
}