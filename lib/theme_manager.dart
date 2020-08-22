library theme_manager;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_manager/src/color_palettes.dart';
import 'package:theme_manager/src/dark_theme_group.dart';
import 'package:theme_manager/src/light_theme_group.dart';
import 'package:theme_manager/src/theme_group.dart';

class ThemeManager extends ChangeNotifier {

  bool isDarkModeEnabled = false;
  ColorPalette _colorPalette = ColorPalette();
  ThemeGroup _darkThemeGroup = DarkThemeGroup(ColorPalette());
  ThemeGroup _lightThemeGroup = LightThemeGroup(ColorPalette());

  ThemeManager({colorPalette}) {
    _colorPalette = colorPalette;
    _darkThemeGroup.colorPalette = colorPalette;
    _lightThemeGroup.colorPalette = colorPalette;
  }

  get colorPalette => _colorPalette;

  set colorPalette(ColorPalette colorPalette) {
    this.colorPalette = colorPalette;
    _darkThemeGroup.colorPalette = colorPalette;
    _lightThemeGroup.colorPalette = colorPalette;
    notifyListeners();
  }
  
  void updateDarkModeEnabled(bool isDarkModeEnabled) {
    this.isDarkModeEnabled = isDarkModeEnabled;
    notifyListeners();
  }

  getTheme(ThemeGroupType type) {
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

Widget title(String text, [ThemeGroupType type = ThemeGroupType.MOM]) {
  return Consumer<ThemeManager> (
    builder: (context, themeManager, child) {
      return Text(
        text,
        style: themeManager.getTheme(type).textTheme.headline6,//title was depricated
      );
    },
  );
}

Widget subTitle(String text, [ThemeGroupType type = ThemeGroupType.MOM]) {
  return Consumer<ThemeManager> (
    builder: (context, themeManager, child) {
      return Text(
        text,
        style: themeManager.getTheme(type).textTheme.subtitle1,
      );
    },
  );
}

Widget subTitle2(String text, [ThemeGroupType type = ThemeGroupType.MOM]) {
  return Consumer<ThemeManager> (
    builder: (context, themeManager, child) {
      return Text(
        text,
        style: themeManager.getTheme(type).textTheme.subtitle2,
      );
    },
  );
}

Widget icon(IconData icon, [ThemeGroupType type = ThemeGroupType.MOM]) {
  return Consumer<ThemeManager> (
    builder: (context, themeManager, child) {
      return Icon(
        icon,
        color: themeManager.getTheme(type).iconTheme.color,
      );
    },
  );
}