import 'package:flutter/material.dart';
import 'package:theme_manager/src/theme_group.dart';

import 'color_palettes.dart';

class DarkThemeGroup extends ThemeGroup {

  @override
  ThemeData mainOnMain() {
    //TODO - pass from widget source to make bold/starker contrast vs normal/lighter contrast
    bool important = true;
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      cardTheme: CardTheme(
        color: this.colorPalette.darkFg,
        //elevation: 24,
      ),
      textTheme: TextTheme(
        headline6: TextStyle(//title
            color: important ? colorPalette.darkTextImportant : colorPalette.darkText,
            fontWeight: important ? FontWeight.bold : FontWeight.normal
        ),
        subtitle1: TextStyle(
          color: colorPalette.darkText,
        ),
        subtitle2: TextStyle(
          color: colorPalette.darkText,
        ),
      ),
    );
  }

  @override
  ThemeData primaryOnMain() {
    //TODO - pass from widget source to make bold/starker contrast vs normal/lighter contrast
    bool important = true;
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      cardTheme: CardTheme(
        color: this.colorPalette.darkFg,
        //elevation: 24,
      ),
      textTheme: TextTheme(
        headline6: TextStyle(//title
            color: colorPalette.primary,
            fontWeight: important ? FontWeight.bold : FontWeight.normal
        ),
        subtitle1: TextStyle(
          color: colorPalette.primary,
        ),
        subtitle2: TextStyle(
          color: colorPalette.primary,
        ),
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