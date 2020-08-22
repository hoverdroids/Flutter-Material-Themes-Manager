import 'package:flutter/material.dart';
import 'package:theme_manager/src/theme_group.dart';

import 'color_palettes.dart';

class DarkThemeGroup extends ThemeGroup {

  @override
  ThemeData mainOnMain() {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      cardTheme: CardTheme(
        color: this.colorPalette.darkFg,
        //elevation: 24,
      ),
    );
  }

  @override
  ThemeData primaryOnMain() {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      cardTheme: CardTheme(
        color: this.colorPalette.darkFg,
        //elevation: 24,
      ),
    );
  }

  @override
  ThemeData secondaryOnMain() {
    return ThemeData(
      //scaffoldBackgroundColor: colorPalette.darkBg,
      cardTheme: CardTheme(
        color: this.colorPalette.darkFg,
        //elevation: 24,
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