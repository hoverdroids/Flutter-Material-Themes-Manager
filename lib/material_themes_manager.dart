// ignore_for_file: constant_identifier_names

library material_themes_manager;

import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_themes_manager/src/colors.dart';
import 'package:material_themes_manager/src/dark_theme_group.dart';
import 'package:material_themes_manager/src/light_theme_group.dart';
import 'package:material_themes_manager/src/theme_group.dart';

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
class MaterialThemesManager with ChangeNotifier, DiagnosticableTreeMixin {

  bool isDarkModeEnabled = false;
  final ThemeGroup _darkThemeGroup = DarkThemeGroup();
  final ThemeGroup _lightThemeGroup = LightThemeGroup();
  ColorPalette _colorPalette = ColorPalette();

  updateColorPalette(ColorPalette colorPalette) {
    _darkThemeGroup.updateColorPalette(colorPalette);
    _lightThemeGroup.updateColorPalette(colorPalette);
    _colorPalette = colorPalette;
    notifyListeners();
  }

  ColorPalette colorPalette() {
    return _colorPalette;
  }
  
  void updateDarkModeEnabled(bool isDarkModeEnabled) {
    this.isDarkModeEnabled = isDarkModeEnabled;
    notifyListeners();
  }

  void toggleDarkModeEnabled() {
    isDarkModeEnabled = !isDarkModeEnabled;
    notifyListeners();
  }

  ThemeData getTheme(ThemeGroupType? type, {Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL, groupThemeType}) {
    return isDarkModeEnabled ? _darkThemeGroup.theme(type, emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize) : _lightThemeGroup.theme(type, emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
  }

  ThemeData getPrimaryTheme({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return isDarkModeEnabled ? _darkThemeGroup.theme(ThemeGroupType.POM, emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize) : _lightThemeGroup.theme(ThemeGroupType.POM, emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
  }

  ThemeData getPrimaryLightTheme({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return _lightThemeGroup.theme(ThemeGroupType.MOM, emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
  }

  ThemeData getPrimaryDarkTheme({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return _darkThemeGroup.theme(ThemeGroupType.MOM, emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
  }

  ThemeMode getThemeMode() {
    return isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light;
  }

  BoxDecoration getBoxDecorationShadow(
      {
        Color? color = Colors.transparent,
        BorderRadius? borderRadius = const BorderRadius.all(Radius.circular(20.0)),
        ShadowType? shadowType = ShadowType.DARK,
        LightSourcePosition? lightSourcePosition = LightSourcePosition.TOP_LEFT,
        ShadowIntensity? shadowIntensity = ShadowIntensity.NORMAL,
        ShadowHardness? shadowHardness = ShadowHardness.NORMAL,
      }
  ) {
    
    return BoxDecoration(
        color: color,
        borderRadius: borderRadius,
        boxShadow: getBoxShadow(
          shadowType: shadowType,
          lightSourcePosition: lightSourcePosition,
          shadowIntensity: shadowIntensity,
          shadowHardness: shadowHardness
        )
    );
  }

  List<BoxShadow> getBoxShadow(
      {
        ShadowType? shadowType = ShadowType.DARK,
        LightSourcePosition? lightSourcePosition = LightSourcePosition.TOP_LEFT,
        ShadowIntensity? shadowIntensity = ShadowIntensity.NORMAL,
        ShadowHardness? shadowHardness = ShadowHardness.NORMAL
      }
  ) {
    
    var type = shadowType;
    var position = lightSourcePosition;
    var intensity = shadowIntensity;
    var hardness = shadowHardness;
    
    switch (type) {
      case ShadowType.PRIMARY:
        return createThemedShadow(_colorPalette.primary, position, intensity, hardness);
      case ShadowType.SECONDARY:
        return createThemedShadow(_colorPalette.secondary, position, intensity, hardness);
      case ShadowType.LIGHT:
        return createThemedShadow(Colors.white, position, intensity, hardness);
      default:
        return createThemedShadow(Colors.black54, position, intensity, hardness);
    }
  }

  //TODO
  /*List<Shadow> getTextShadow() {
    <Shadow>[
      Shadow(
          blurRadius: 18.0,
          color: Colors.black87,
          offset: Offset.fromDirection(120, 12)
      )
    ]
  }*/

  Widget getBackgroundGradient(
      BackgroundGradientType? type,
      {
        AlignmentGeometry? begin,
        AlignmentGeometry? end,
        List<double>? stops,
        List<double>? opacities,
        TileMode? tileMode,
        GradientTransform? transform
      }
  ) {
    return isDarkModeEnabled
        ? _darkThemeGroup.backgroundGradient(type, begin, end, stops, opacities, tileMode, transform)
        : _lightThemeGroup.backgroundGradient(type, begin, end, stops, opacities, tileMode, transform);
  }

  Widget getBackgroundRadialGradient(
      BackgroundGradientType? type,
      {
        AlignmentGeometry? center,
        double? radius,
        List<double>? stops,
        List<double>? opacities,
        TileMode? tileMode,
        AlignmentGeometry? focal,
        double? focalRadius,
        GradientTransform? transform
      }
    ) {
    return isDarkModeEnabled
        ? _darkThemeGroup.backgroundRadialGradient(type, center, radius, stops, opacities, tileMode, focal, focalRadius, transform)
        : _lightThemeGroup.backgroundRadialGradient(type, center, radius, stops, opacities, tileMode, focal, focalRadius, transform);
  }

  Widget getBackgroundSweepGradient(
      BackgroundGradientType? type,
      {
        AlignmentGeometry? center,
        double? startAngle,
        double? endAngle,
        List<double>? stops,
        List<double>? opacities,
        TileMode? tileMode,
        GradientTransform? transform
      }
  ) {
    return isDarkModeEnabled
        ? _darkThemeGroup.backgroundSweepGradient(type, center, startAngle, endAngle, stops, opacities, tileMode, transform)
        : _lightThemeGroup.backgroundSweepGradient(type, center, startAngle, endAngle, stops, opacities, tileMode, transform);
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

enum LightSourcePosition {
  TOP_LEFT,
  TOP,
  TOP_RIGHT,
  RIGHT,
  BOTTOM_RIGHT,
  BOTTOM,
  BOTTOM_LEFT,
  LEFT,
  CENTER
}

Offset getOffset(LightSourcePosition? lightSourcePosition) {
  switch(lightSourcePosition) {
    case LightSourcePosition.TOP_LEFT:
      return const Offset(4.0, 4.0);
    case LightSourcePosition.TOP:
      return const Offset(0.0, 4.0);
    case LightSourcePosition.TOP_RIGHT:
      return const Offset(-4.0, 4.0);
    case LightSourcePosition.RIGHT:
      return const Offset(-4.0, 0.0);
    case LightSourcePosition.BOTTOM_RIGHT:
      return const Offset(-4.0, -4.0);
    case LightSourcePosition.BOTTOM:
      return const Offset(0.0, -4.0);
    case LightSourcePosition.BOTTOM_LEFT:
      return const Offset(4.0, -4.0);
    case LightSourcePosition.LEFT:
      return const Offset(4.0, 0.0);
    default:
      return const Offset(0.0, 0.0);
  }
}

enum ShadowIntensity {
  NONE,
  SOFT,
  NORMAL,
  DARK
}

double getShadowOpacity(ShadowIntensity? intensity) {
  if (intensity == ShadowIntensity.NONE) {
    return 0.0;
  } else if (intensity == ShadowIntensity.SOFT) {
    return 0.2;
  } else if (intensity == ShadowIntensity.NORMAL) {
    return 0.4;
  } else {
    return 0.65;
  }
}

enum ShadowHardness {
  HARD,
  NORMAL,
  SOFT
}

double getShadowBlurRadius(ShadowHardness? sharpness) {
  if (sharpness == ShadowHardness.HARD) {
    return 0.0;
  } else if (sharpness == ShadowHardness.NORMAL) {
    return 4.0;
  } else {
    return 10.0;
  }
}

enum ShadowType {
  LIGHT,    //white shadow
  DARK,     //normal shadows, black on anything
  PRIMARY,  //Primary hue
  SECONDARY //Secondary hue
}

List<BoxShadow> createThemedShadow(
    Color color,
    LightSourcePosition? lightSourcePosition,
    ShadowIntensity? shadowIntensity,
    ShadowHardness? shadowHardness) {

  var offset = getOffset(lightSourcePosition);
  //TODO - CHRIS - var shadowColor = color.withOpacity(getShadowOpacity(shadowIntensity));
  var blurRadius = getShadowBlurRadius(shadowHardness);

  return createShadow(color: color, offset: offset, blurRadius: blurRadius, spreadRadius: 0.0);
}

List<BoxShadow> createShadow({
  Color color = Colors.black54,
  Offset offset = const Offset(0.0, 4.0),
  double blurRadius = 10.0,
  double spreadRadius = 0.0
}) {
  return [
    BoxShadow(
        color: color,
        offset: offset,
        blurRadius: blurRadius,
        spreadRadius: spreadRadius
    ),
  ];
}

enum BackgroundGradientType {
  MAIN_BG,
  MAIN_FG,
  PRIMARY,
  SECONDARY
}

Widget createSweepGradient(
  { required List<Color> colors,
  AlignmentGeometry? center,
  double? startAngle,
  double? endAngle,
  List<double>? stops,
  List<double>? opacities,
  TileMode? tileMode,
  GradientTransform? transform }
) {
  return Container(
    decoration: BoxDecoration(
      gradient: SweepGradient(
        colors: _applyOpacitiesToColors(colors, opacities),
        center: center ?? Alignment.center,
        startAngle: startAngle ?? 0.0,
        endAngle: endAngle ?? math.pi * 2,
        stops: stops,
        tileMode: tileMode ?? TileMode.clamp,
        transform: transform
      ),
    ),
  );
}

Widget createRadialGradient(
    { required List<Color> colors,
    AlignmentGeometry? center,
    double? radius,
    List<double>? stops,
    List<double>? opacities,
    TileMode? tileMode,
    AlignmentGeometry? focal,
    double? focalRadius,
    GradientTransform? transform }
) {
  return Container(
    decoration: BoxDecoration(
      gradient: RadialGradient(
          colors: _applyOpacitiesToColors(colors, opacities),
          center: center ?? Alignment.center,
          radius: radius ?? 0.5,
          stops: stops,
          tileMode: tileMode ?? TileMode.clamp,
          focal: focal,
          focalRadius: focalRadius ?? 0.0,
          transform: transform
      ),
    ),
  );
}

Widget createLinearGradient(
    { required List<Color> colors,
    AlignmentGeometry? begin,
    AlignmentGeometry? end,
    List<double>? stops,
    List<double>? opacities,
    TileMode? tileMode,
    GradientTransform? transform }
) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: _applyOpacitiesToColors(colors, opacities),
        begin: begin ?? Alignment.topCenter,
        end: end ?? Alignment.bottomCenter,
        stops: stops,
        tileMode: tileMode ?? TileMode.clamp,
        transform: transform
      ),
    ),
  );
}

List<Color> _applyOpacitiesToColors(List<Color> colors, List<double>? nullableOpacities) {
  var opacities = nullableOpacities ?? <double>[];
  var updatedColors = <Color>[];
  for(var i = 0; i < colors.length; i++) {
    var opacity = 1.0;
    if (opacities.isEmpty) {
      //No opacity supplied, make everything visible
      opacity = 1.0;
    } else if (opacities.length == 1) {
      //Only one opacity supplied, apply to all colors
      opacity = opacities[0];
    } else if (opacities.length == colors.length) {
      //An opacity was supplied for each color; apply opacity individually
      opacity = opacities[i];
    } else {
      //A different number of colors and opacities were supplied. Interpolate.
      if (i == 0) {
        opacity = opacities[0]; //first
      } else if (i == colors.length - 1) {
        opacity = opacities[opacities.length - 1]; //last
      } else {
        var step = opacities.length * 1.0 / colors.length; //in between
        var left = (i * step).floor();
        var right = left + 1;
        opacity = (opacities[left] + opacities[right]) / 2.0;
      }
    }
    updatedColors.add(colors[i].withOpacity(opacity));
  }
  return updatedColors;
}

//https://material.io/design/environment/light-shadows.html#shadows
//https://material.io/design/environment/elevation.html
//https://material.io/design/environment/elevation.html#elevation-in-material-design
enum ElevationLevel {
  FLAT, LOW, MEDIUM, HIGH, EXTREME
}

double getElevation(ElevationLevel? elevation) {
  switch(elevation) {
    case ElevationLevel.EXTREME:
      return 24;
    case ElevationLevel.HIGH:
      return 12;
    case ElevationLevel.MEDIUM:
      return 6;
    case ElevationLevel.LOW:
      return 2;
    default:
      return 0;
  }
}

//https://google.github.io/material-design-icons/
enum IconSize {
  MINI, SMALL, MEDIUM, LARGE
}

double getIconSize(IconSize? size) {
  switch(size) {
    case IconSize.LARGE:
      return 48;
    case IconSize.MEDIUM:
      return 36;
    case IconSize.SMALL:
      return 24;
    default:
      return 18;
  }
}

//https://material.io/components/buttons#hierarchy-and-placement
enum Emphasis {
  NONE, LOW, MEDIUM, HIGH
}

enum FontSize {
  H1, H2, H3, H4, H5, TITLE, SUB1, SUB2, BODY1, BODY2, CAPTION, OVERLINE
}

double getFontSize(FontSize? size) {
  switch(size) {
    case FontSize.H1:
      return 96;
    case FontSize.H2:
      return 60;
    case FontSize.H3:
      return 48;
    case FontSize.H4:
      return 34;
    case FontSize.H5:
      return 24;
    case FontSize.TITLE:
      return 20;
    case FontSize.SUB1:
      return 16;
    case FontSize.SUB2:
      return 14;
    case FontSize.BODY1:
      return 16;
    case FontSize.BODY2:
      return 14;
    case FontSize.CAPTION:
      return 12;
    default://OVERLINE
      return 10;
  }
}

FontWeight getFontWeight(Emphasis? emphasis) {
  switch(emphasis) {
    case Emphasis.HIGH:
      return FontWeight.bold;//w700
    case Emphasis.MEDIUM:
      return FontWeight.w600;
    case Emphasis.LOW:
      return FontWeight.w500;
    default:
      return FontWeight.normal;//w400
  }
}

MaterialColor toMaterialColor(Color color) {
  int red = color.red;
  int green = color.green;
  int blue = color.blue;
  Color defaultMaterialColor = Color.fromRGBO(red, green,  blue, .6);

  Map<int, Color> colorMap =
  {
    50:Color.fromRGBO(red, green,  blue, .1),
    100:Color.fromRGBO(red, green,  blue, .2),
    200:Color.fromRGBO(red, green,  blue, .3),
    300:Color.fromRGBO(red, green,  blue, .4),
    400:Color.fromRGBO(red, green,  blue, .5),
    500:defaultMaterialColor,
    600:Color.fromRGBO(red, green,  blue, .7),
    700:Color.fromRGBO(red, green,  blue, .8),
    800:Color.fromRGBO(red, green,  blue, .9),
    900:Color.fromRGBO(red, green,  blue, 1),
  };
  return MaterialColor(defaultMaterialColor.value, colorMap);
}

//The default color palette will make the app look like a wireframe
class ColorPalette {
  //Primary Colors
  Color primary;
  Color primaryAccent;

  Color primaryContrast;
  Color primaryContrastImportant;
  Color primarySecondaryContrast;
  Color primarySecondaryContrastImportant;
  
  //Secondary Colors
  Color secondary;
  Color secondaryAccent;

  Color secondaryContrast;
  Color secondaryContrastImportant;
  Color secondaryPrimaryContrast;
  Color secondaryPrimaryContrastImportant;
  
  //Light "GrayScale"
  Color lightBg;
  Color lightBgAccent;
  
  Color lightFg;
  Color lightFgAccent;
  
  Color lightContrast;
  Color lightContrastImportant;
  Color lightPrimaryContrast;
  Color lightPrimaryContrastImportant;
  Color lightSecondaryContrast;
  Color lightSecondaryContrastImportant;
  Color lightImageContrast;
  Color lightImageContrastImportant;
  
  //Dark "GrayScale"
  Color darkBg;
  Color darkBgAccent;
  
  Color darkFg;
  Color darkFgAccent;
  
  Color darkContrast;
  Color darkContrastImportant;
  Color darkPrimaryContrast;
  Color darkPrimaryContrastImportant;
  Color darkSecondaryContrast;
  Color darkSecondaryContrastImportant;
  Color darkImageContrast;
  Color darkImageContrastImportant;
  
  ColorPalette({
    this.primary = Colors.deepPurple,
    this.primaryAccent = Colors.deepPurpleAccent,
    this.primaryContrast = Colors.purple,
    this.primaryContrastImportant = Colors.purpleAccent,
    this.primarySecondaryContrast = Colors.deepPurple,
    this.primarySecondaryContrastImportant = Colors.deepPurpleAccent,
    
    this.secondary = Colors.deepOrange,
    this.secondaryAccent = Colors.deepOrangeAccent,
    this.secondaryContrast = Colors.orange,
    this.secondaryContrastImportant = Colors.orangeAccent,
    this.secondaryPrimaryContrast = Colors.deepOrange,
    this.secondaryPrimaryContrastImportant = Colors.deepOrangeAccent,
    
    this.lightBg = Colors.white,
    this.lightBgAccent = Colors.white70,
    this.lightFg = Colors.white,
    this.lightFgAccent = Colors.white60,
    this.lightContrast = Colors.grey,
    this.lightContrastImportant = ConstantColors.gray800,
    this.lightPrimaryContrast = Colors.white70,
    this.lightPrimaryContrastImportant = Colors.white,
    this.lightSecondaryContrast = Colors.white70,
    this.lightSecondaryContrastImportant = Colors.white,
    this.lightImageContrast = Colors.white70,
    this.lightImageContrastImportant = Colors.white,

    this.darkBg = Colors.black,
    this.darkBgAccent = ConstantColors.gray1000,
    this.darkFg = ConstantColors.gray800,
    this.darkFgAccent = ConstantColors.gray700,
    this.darkContrast = Colors.white70,
    this.darkContrastImportant = Colors.white,
    this.darkPrimaryContrast = ConstantColors.gray800,
    this.darkPrimaryContrastImportant = Colors.black,
    this.darkSecondaryContrast = ConstantColors.gray800,
    this.darkSecondaryContrastImportant = Colors.black,
    this.darkImageContrast = ConstantColors.gray800,
    this.darkImageContrastImportant = Colors.black,
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