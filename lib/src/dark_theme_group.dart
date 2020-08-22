import 'package:flutter/material.dart';
import 'package:theme_manager/src/theme_group.dart';

import 'color_palettes.dart';

class DarkThemeGroup extends ThemeGroup {

  //DarkThemeGroup([colorPalette]) : super(colorPalette);
  //ColorPalette colorPalette = ColorPalette();

  @override
  ThemeData mainOnMain() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.black,
    );
  }

  @override
  ThemeData primaryOnMain() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.black,
    );
  }

  @override
  ThemeData secondaryOnMain() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.black,
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