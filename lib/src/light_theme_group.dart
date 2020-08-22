import 'package:flutter/material.dart';
import 'package:theme_manager/src/color_palettes.dart';
import 'package:theme_manager/src/theme_group.dart';
import 'package:theme_manager/theme_manager.dart';

class LightThemeGroup extends ThemeGroup {

  //LightThemeGroup([colorPalette]) : super(colorPalette);
  //ColorPalette colorPalette = ColorPalette();

  //@override
  //ColorPalette colorPalette = PinkPalette();

  @override
  ThemeData mainOnMain() {
    return ThemeData(
      cardTheme: CardTheme(
        color: Colors.red//this.colorPalette.mainLight,
      ),
    );
  }

  @override
  ThemeData primaryOnMain() {
    print("POM colorPalette null:${this.colorPalette == null ? "TRUE" : "FALSE"}");
    return ThemeData(
      cardTheme: CardTheme(
        color: this.colorPalette.primary,
      ),
    );
  }

  @override
  ThemeData secondaryOnMain() {
    return ThemeData(
      cardTheme: CardTheme(
        color: this.colorPalette.secondary,
      ),
    );
  }

  @override
  ThemeData mainOnPrimary() {
    return ThemeData(

    );
  }

  @override
  ThemeData primaryOnPrimary() {
    return ThemeData(

    );
  }

  @override
  ThemeData secondaryOnPrimary() {
    return ThemeData(

    );
  }

  @override
  ThemeData mainOnSecondary() {
    return ThemeData(

    );
  }

  @override
  ThemeData primaryOnSecondary() {
    return ThemeData(

    );
  }

  @override
  ThemeData secondaryOnSecondary() {
    return ThemeData(

    );
  }

  @override
  ThemeData mainOnImage() {
    return ThemeData(

    );
  }

  @override
  ThemeData primaryOnImage() {
    return ThemeData(

    );
  }

  @override
  ThemeData secondaryOnImage() {
    return ThemeData(

    );
  }
}