library theme_manager;

import 'package:theme_manager/src/color_palettes.dart';
import 'package:theme_manager/src/dark_theme_group.dart';
import 'package:theme_manager/src/light_theme_group.dart';
import 'package:theme_manager/src/theme_group.dart';

class ThemeManager {

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
  }
}