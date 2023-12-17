import 'package:flutter/material.dart';
import 'package:material_themes_manager/src/theme_group.dart';

import '../material_themes_manager.dart';

class DarkThemeGroup extends ThemeGroup {

  @override
  ThemeData mainOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      primaryColor: colorPalette.primary,
      primarySwatch: toMaterialColor(colorPalette.primary),
      primaryColorDark: colorPalette.primary,
      primaryColorLight: colorPalette.primary,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: colorPalette.darkBg,
      appBarTheme: AppBarTheme(
        color: colorPalette.darkBg,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.darkFg,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        displayMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        displaySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headlineMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headlineSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        titleLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        titleMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        titleSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        bodySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        labelSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
        size: getIconSize(iconSize)
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkContrast;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkContrast;
          }
          return null;
        }),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        fillColor: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkContrast;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkContrast;
          }
          return null;
        }),
      )
    );
  }

  @override
  ThemeData primaryOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.primary,
      appBarTheme: AppBarTheme(
        color: colorPalette.primary,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: Colors.white,
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.primary,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        displayMedium: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        displaySmall: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headlineMedium: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headlineSmall: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        titleLarge: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        titleMedium: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        titleSmall: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyLarge: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyMedium: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        bodySmall: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        labelSmall: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: colorPalette.primary,
        size: getIconSize(iconSize)
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primary;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primary;
          }
          return null;
        }),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        fillColor: colorPalette.primary,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primary;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primary;
          }
          return null;
        }),
      )
    );
  }

  @override
  ThemeData secondaryOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.secondary,
      appBarTheme: AppBarTheme(
        color: colorPalette.secondary,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: Colors.white,
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.secondary,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        displayMedium: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        displaySmall: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headlineMedium: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headlineSmall: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        titleLarge: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        titleMedium: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        titleSmall: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyLarge: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyMedium: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        bodySmall: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        labelSmall: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: colorPalette.secondary,
        size: getIconSize(iconSize)
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondary;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondary;
          }
          return null;
        }),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        fillColor: colorPalette.secondary,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondary;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondary;
          }
          return null;
        }),
      )
    );
  }

  @override
  ThemeData mainOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      appBarTheme: AppBarTheme(
        color: colorPalette.darkBg,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.darkFg,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        displayMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        displaySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headlineMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headlineSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        titleLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        titleMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        titleSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        bodySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        labelSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
        size: getIconSize(iconSize)
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkPrimaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkPrimaryContrast;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkPrimaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkPrimaryContrast;
          }
          return null;
        }),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        fillColor: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkPrimaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkPrimaryContrast;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkPrimaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkPrimaryContrast;
          }
          return null;
        }),
      )
    );
  }

  @override
  ThemeData primaryOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.primaryContrast,
      appBarTheme: AppBarTheme(
        color: colorPalette.primaryContrast,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.primaryContrast,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        displayMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        displaySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headlineMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headlineSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        titleLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        titleMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        titleSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        bodySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        labelSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
        size: getIconSize(iconSize)
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.primaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primaryContrast;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.primaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primaryContrast;
          }
          return null;
        }),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        fillColor: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.primaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primaryContrast;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.primaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primaryContrast;
          }
          return null;
        }),
      )
    );
  }

  @override
  ThemeData secondaryOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.secondaryPrimaryContrast,
      appBarTheme: AppBarTheme(
        color: colorPalette.secondaryPrimaryContrast,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.secondaryPrimaryContrast,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        displayMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        displaySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headlineMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headlineSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        titleLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        titleMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        titleSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        bodySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        labelSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
        size: getIconSize(iconSize)
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.secondaryPrimaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondaryPrimaryContrast;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.secondaryPrimaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondaryPrimaryContrast;
          }
          return null;
        }),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        fillColor: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.secondaryPrimaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondaryPrimaryContrast;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.secondaryPrimaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondaryPrimaryContrast;
          }
          return null;
        }),
      )
    );
  }

  @override
  ThemeData mainOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      appBarTheme: AppBarTheme(
        color: colorPalette.darkBg,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.darkFg,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        displayMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        displaySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headlineMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headlineSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        titleLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        titleMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        titleSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        bodySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        labelSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
        size: getIconSize(iconSize)
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkSecondaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkSecondaryContrast;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkSecondaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkSecondaryContrast;
          }
          return null;
        }),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        fillColor: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkSecondaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkSecondaryContrast;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkSecondaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkSecondaryContrast;
          }
          return null;
        }),
      )
    );
  }

  @override
  ThemeData primaryOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.primarySecondaryContrast,
      appBarTheme: AppBarTheme(
        color: colorPalette.primarySecondaryContrast,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.primarySecondaryContrast,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        displayMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        displaySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headlineMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headlineSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        titleLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        titleMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        titleSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        bodySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        labelSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
        size: getIconSize(iconSize)
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.primarySecondaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primarySecondaryContrast;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.primarySecondaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primarySecondaryContrast;
          }
          return null;
        }),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        fillColor: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.primarySecondaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primarySecondaryContrast;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.primarySecondaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primarySecondaryContrast;
          }
          return null;
        }),
      )
    );
  }

  @override
  ThemeData secondaryOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.secondaryContrast,
      appBarTheme: AppBarTheme(
        color: colorPalette.secondaryContrast,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.secondaryContrast,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        displayMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        displaySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headlineMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headlineSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        titleLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        titleMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        titleSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        bodySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        labelSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
        size: getIconSize(iconSize)
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.secondaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondaryContrast;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.secondaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondaryContrast;
          }
          return null;
        }),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        fillColor: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.secondaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondaryContrast;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.secondaryContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondaryContrast;
          }
          return null;
        }),
      )
    );
  }

  @override
  ThemeData mainOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      appBarTheme: AppBarTheme(
        color: colorPalette.darkBg,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.darkFg,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        displayMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        displaySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headlineMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headlineSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        titleLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        titleMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        titleSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyLarge: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyMedium: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        bodySmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        labelSmall: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
        size: getIconSize(iconSize)
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkImageContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkImageContrast;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkImageContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkImageContrast;
          }
          return null;
        }),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        fillColor: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkImageContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkImageContrast;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) && emphasis == Emphasis.HIGH) {
            return colorPalette.darkImageContrastImportant;
          }
          if (states.contains(MaterialState.selected)) {
            return colorPalette.darkImageContrast;
          }
          return null;
        }),
      )
    );
  }

  @override
  ThemeData primaryOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.primary,
      appBarTheme: AppBarTheme(
        color: colorPalette.primary,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: Colors.white,
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.primary,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        displayMedium: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        displaySmall: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headlineMedium: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headlineSmall: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        titleLarge: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        titleMedium: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        titleSmall: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyLarge: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyMedium: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        bodySmall: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        labelSmall: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: colorPalette.primary,
        size: getIconSize(iconSize)
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primary;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primary;
          }
          return null;
        }),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        fillColor: colorPalette.primary,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primary;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.primary;
          }
          return null;
        }),
      )
    );
  }

  @override
  ThemeData secondaryOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.secondary,
      appBarTheme: AppBarTheme(
        color: colorPalette.secondary,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: Colors.white,
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.secondary,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        displayMedium: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        displaySmall: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headlineMedium: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headlineSmall: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        titleLarge: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        titleMedium: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        titleSmall: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyLarge: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyMedium: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        bodySmall: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        labelSmall: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: colorPalette.secondary,
        size: getIconSize(iconSize)
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondary;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondary;
          }
          return null;
        }),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        fillColor: colorPalette.secondary,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondary;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorPalette.secondary;
          }
          return null;
        }),
      )
    );
  }

  @override
  Widget mainBackgroundGradient(AlignmentGeometry? begin, AlignmentGeometry? end, List<double>? stops, List<double>? opacities, TileMode? tileMode, GradientTransform? transform) {
    var colors = [colorPalette.darkBg, colorPalette.darkBgAccent];
    return createLinearGradient(colors:colors, begin:begin, end:end, stops:stops, opacities:opacities, tileMode:tileMode, transform:transform);
  }

  @override
  Widget mainBackgroundRadialGradient(AlignmentGeometry? center, double? radius, List<double>? stops, List<double>? opacities, TileMode? tileMode, AlignmentGeometry? focal, double? focalRadius, GradientTransform? transform) {
    var colors = [colorPalette.darkBg, colorPalette.darkBgAccent];
    return createRadialGradient(colors:colors, center:center, radius:radius, stops:stops, opacities:opacities, tileMode:tileMode, focal:focal, focalRadius:focalRadius, transform:transform);
  }

  @override
  Widget mainBackgroundSweepGradient(AlignmentGeometry? center, double? startAngle, double? endAngle, List<double>? stops, List<double>? opacities, TileMode? tileMode, GradientTransform? transform) {
    var colors = [colorPalette.darkBg, colorPalette.darkBgAccent];
    return createSweepGradient(colors:colors, center:center, startAngle:startAngle, endAngle:endAngle, stops:stops, opacities:opacities, tileMode:tileMode, transform:transform);
  }

  @override
  Widget mainForegroundGradient(AlignmentGeometry? begin, AlignmentGeometry? end, List<double>? stops, List<double>? opacities, TileMode? tileMode, GradientTransform? transform) {
    var colors = [colorPalette.darkFg, colorPalette.darkFgAccent];
    return createLinearGradient(colors:colors, begin:begin, end:end, stops:stops, opacities:opacities, tileMode:tileMode, transform:transform);
  }

  @override
  Widget mainForegroundRadialGradient(AlignmentGeometry? center, double? radius, List<double>? stops, List<double>? opacities, TileMode? tileMode, AlignmentGeometry? focal, double? focalRadius, GradientTransform? transform) {
    var colors = [colorPalette.darkFg, colorPalette.darkFgAccent];
    return createRadialGradient(colors:colors, center:center, radius:radius, stops:stops, opacities:opacities, tileMode:tileMode, focal:focal, focalRadius:focalRadius, transform:transform);
  }

  @override
  Widget mainForegroundSweepGradient(AlignmentGeometry? center, double? startAngle, double? endAngle, List<double>? stops, List<double>? opacities, TileMode? tileMode, GradientTransform? transform) {
    var colors = [colorPalette.darkFg, colorPalette.darkFgAccent];
    return createSweepGradient(colors:colors, center:center, startAngle:startAngle, endAngle:endAngle, stops:stops, opacities:opacities, tileMode:tileMode, transform:transform);
  }

  @override
  Widget primaryGradient(AlignmentGeometry? begin, AlignmentGeometry? end, List<double>? stops, List<double>? opacities, TileMode? tileMode, GradientTransform? transform) {
    var colors = [colorPalette.primary, colorPalette.primaryAccent];
    return createLinearGradient(colors:colors, begin:begin, end:end, stops:stops, opacities:opacities, tileMode:tileMode, transform:transform);
  }

  @override
  Widget primaryRadialGradient(AlignmentGeometry? center, double? radius, List<double>? stops, List<double>? opacities, TileMode? tileMode, AlignmentGeometry? focal, double? focalRadius, GradientTransform? transform) {
    var colors = [colorPalette.primary, colorPalette.primaryAccent];
    return createRadialGradient(colors:colors, center:center, radius:radius, stops:stops, opacities:opacities, tileMode:tileMode, focal:focal, focalRadius:focalRadius, transform:transform);
  }

  @override
  Widget primarySweepGradient(AlignmentGeometry? center, double? startAngle, double? endAngle, List<double>? stops, List<double>? opacities, TileMode? tileMode, GradientTransform? transform) {
    var colors = [colorPalette.primary, colorPalette.primaryAccent];
    return createSweepGradient(colors:colors, center:center, startAngle:startAngle, endAngle:endAngle, stops:stops, opacities:opacities, tileMode:tileMode, transform:transform);
  }

  @override
  Widget secondaryGradient(AlignmentGeometry? begin, AlignmentGeometry? end, List<double>? stops, List<double>? opacities, TileMode? tileMode, GradientTransform? transform) {
    var colors = [colorPalette.secondary, colorPalette.secondaryAccent];
    return createLinearGradient(colors:colors, begin:begin, end:end, stops:stops, opacities:opacities, tileMode:tileMode, transform:transform);
  }

  @override
  Widget secondaryRadialGradient(AlignmentGeometry? center, double? radius, List<double>? stops, List<double>? opacities, TileMode? tileMode, AlignmentGeometry? focal, double? focalRadius, GradientTransform? transform) {
    var colors = [colorPalette.secondary, colorPalette.secondaryAccent];
    return createRadialGradient(colors:colors, center:center, radius:radius, stops:stops, opacities:opacities, tileMode:tileMode, focal:focal, focalRadius:focalRadius, transform:transform);
  }

  @override
  Widget secondarySweepGradient(AlignmentGeometry? center, double? startAngle, double? endAngle, List<double>? stops, List<double>? opacities, TileMode? tileMode, GradientTransform? transform) {
    var colors = [colorPalette.secondary, colorPalette.secondaryAccent];
    return createSweepGradient(colors:colors, center:center, startAngle:startAngle, endAngle:endAngle, stops:stops, opacities:opacities, tileMode:tileMode, transform:transform);
  }
}