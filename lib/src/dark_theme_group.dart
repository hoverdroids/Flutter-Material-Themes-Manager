import 'package:flutter/material.dart';
import 'package:material_themes_manager/src/theme_group.dart';

class DarkThemeGroup extends ThemeGroup {

  @override
  ThemeData mainOnMain() {
    //TODO - pass from widget source to make bold/starker contrast vs normal/lighter contrast
    bool important = true;
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      appBarTheme: AppBarTheme(
        color: colorPalette.darkBg,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.lightTextImportant : colorPalette.lightText,
        ),
        textTheme: TextTheme(
        ),*/
      ),
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
      iconTheme: IconThemeData(
        color: colorPalette.darkText,
      ),
      toggleableActiveColor : colorPalette.darkPrimaryContrast,
    );
  }

  @override
  ThemeData primaryOnMain() {
    //TODO - pass from widget source to make bold/starker contrast vs normal/lighter contrast
    bool important = true;
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      appBarTheme: AppBarTheme(
        color: colorPalette.primary,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: Colors.white,
        ),*/
      ),
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
      iconTheme: IconThemeData(
        color: colorPalette.primary,
      ),
      toggleableActiveColor : colorPalette.primary,
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
    //TODO - pass from widget source to make bold/starker contrast vs normal/lighter contrast
    bool important = true;
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: colorPalette.darkBg,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.lightTextImportant : colorPalette.lightText,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      textTheme: TextTheme(
        headline6: TextStyle(//title
            color: important ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: important ? FontWeight.bold : FontWeight.normal
        ),
        subtitle1: TextStyle(
          color: colorPalette.darkPrimaryContrast,
        ),
        subtitle2: TextStyle(
          color: colorPalette.darkPrimaryContrast,
        ),
      ),
      iconTheme: IconThemeData(
        color: colorPalette.darkPrimaryContrast,
      ),
      toggleableActiveColor : colorPalette.darkPrimaryContrast,
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