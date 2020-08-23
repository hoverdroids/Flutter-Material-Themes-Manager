import 'package:flutter/material.dart';
import 'package:theme_manager/src/color_palettes.dart';
import 'package:theme_manager/src/theme_group.dart';
import 'package:theme_manager/theme_manager.dart';

class LightThemeGroup extends ThemeGroup {

  @override
  ThemeData mainOnMain() {
    //TODO - pass from widget source to make bold/starker contrast vs normal/lighter contrast
    bool important = true;

    return ThemeData(
      appBarTheme: AppBarTheme(
        color: colorPalette.lightBg,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.lightTextImportant : colorPalette.lightText,
        ),*/
        textTheme: TextTheme(

        ),
      ),
      /*cardTheme: CardTheme(
        color: this.colorPalette.lightFg,
      ),*/
      textTheme: TextTheme(
        headline6: TextStyle(//title
          color: important ? colorPalette.lightTextImportant : colorPalette.lightText,
          fontWeight: important ? FontWeight.bold : FontWeight.normal
        ),
        subtitle1: TextStyle(
          color: colorPalette.lightText,
        ),
        subtitle2: TextStyle(
          color: colorPalette.lightText,
        ),
      ),
      iconTheme: IconThemeData(
        color: colorPalette.lightText,
      ),
    );
  }

  @override
  ThemeData primaryOnMain() {
    //TODO - pass from widget source to make bold/starker contrast vs normal/lighter contrast
    bool important = true;

    return ThemeData(
      /*scaffoldBackgroundColor: colorPalette.primary,
      cardTheme: CardTheme(
        color: colorPalette.primary,
      ),*/
      appBarTheme: AppBarTheme(
        color: colorPalette.primary,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: Colors.white,
        ),*/
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
      iconTheme: IconThemeData(
        color: colorPalette.primary,
      ),
    );
  }

  @override
  ThemeData secondaryOnMain() {
    return ThemeData(

    );
  }

  @override
  ThemeData mainOnPrimary() {
    //TODO - pass from widget source to make bold/starker contrast vs normal/lighter contrast
    bool important = true;
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: colorPalette.lightBg,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.lightTextImportant : colorPalette.lightText,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      /*cardTheme: CardTheme(
        color: this.colorPalette.lightFg,
      ),*/
      textTheme: TextTheme(
        headline6: TextStyle(//title
            color: important ? colorPalette.lightPrimaryContrastImportant : colorPalette.lightPrimaryContrast,
            fontWeight: important ? FontWeight.bold : FontWeight.normal
        ),
        subtitle1: TextStyle(
          color: colorPalette.lightPrimaryContrast,
        ),
        subtitle2: TextStyle(
          color: colorPalette.lightPrimaryContrast,
        ),
      ),
      iconTheme: IconThemeData(
        color: colorPalette.lightPrimaryContrast,
      ),
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