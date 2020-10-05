import 'package:flutter/material.dart';

import '../material_themes_manager.dart';

abstract class ThemeGroup {

  ColorPalette colorPalette = ColorPalette();

  void updateColorPalette(ColorPalette colorPalette) {
    this.colorPalette = colorPalette;
  }
  
  Widget backgroundGradient(
    BackgroundGradientType type,
    AlignmentGeometry begin,
    AlignmentGeometry end,
    List<double> stops,
    List<double> opacities,
    TileMode tileMode,
    GradientTransform transform) {

    if (type == BackgroundGradientType.MAIN_BG) {
      return mainBackgroundGradient(begin, end, stops, opacities, tileMode, transform);
    } else if (type == BackgroundGradientType.MAIN_FG) {
      return mainForegroundGradient(begin, end, stops, opacities, tileMode, transform);
    } else if (type == BackgroundGradientType.PRIMARY) {
      return primaryGradient(begin, end, stops, opacities, tileMode, transform);
    } else {
      return secondaryGradient(begin, end, stops, opacities, tileMode, transform);
    }
  }

  Widget backgroundRadialGradient(
      BackgroundGradientType type,
      AlignmentGeometry center,
      double radius,
      List<double> stops,
      List<double> opacities,
      TileMode tileMode,
      AlignmentGeometry focal,
      double focalRadius,
      GradientTransform transform) {

    if (type == BackgroundGradientType.MAIN_BG) {
      return mainBackgroundRadialGradient(center, radius, stops, opacities, tileMode, focal, focalRadius, transform);
    } else if (type == BackgroundGradientType.MAIN_FG) {
      return mainForegroundRadialGradient(center, radius, stops, opacities, tileMode, focal, focalRadius, transform);
    } else if (type == BackgroundGradientType.PRIMARY) {
      return primaryRadialGradient(center, radius, stops, opacities, tileMode, focal, focalRadius, transform);
    } else {
      return secondaryRadialGradient(center, radius, stops, opacities, tileMode, focal, focalRadius, transform);
    }
  }

  Widget backgroundSweepGradient(
      BackgroundGradientType type,
      AlignmentGeometry center,
      double startAngle,
      double endAngle,
      List<double> stops,
      List<double> opacities,
      TileMode tileMode,
      GradientTransform transform) {

    if (type == BackgroundGradientType.MAIN_BG) {
      return mainBackgroundSweepGradient(center, startAngle, endAngle, stops, opacities, tileMode, transform);
    } else if (type == BackgroundGradientType.MAIN_FG) {
      return mainForegroundSweepGradient(center, startAngle, endAngle, stops, opacities, tileMode, transform);
    } else if (type == BackgroundGradientType.PRIMARY) {
      return primarySweepGradient(center, startAngle, endAngle, stops, opacities, tileMode, transform);
    } else {
      return secondarySweepGradient(center, startAngle, endAngle, stops, opacities, tileMode, transform);
    }
  }

  ThemeData theme(ThemeGroupType themeGroupType, {Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    if(themeGroupType == ThemeGroupType.MOM) {
      return mainOnMain(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.POM) {
      return primaryOnMain(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.SOM) {
      return secondaryOnMain(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.MOP) {
      return mainOnPrimary(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.POP) {
      return primaryOnPrimary(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.SOP) {
      return secondaryOnPrimary(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.MOS) {
      return mainOnSecondary(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.POS) {
      return primaryOnSecondary(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.SOS) {
      return secondaryOnSecondary(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.MOI) {
      return mainOnImage(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.POI) {
      return primaryOnImage(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else {
      return secondaryOnImage(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    }
  }

  ThemeData mainOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData primaryOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData secondaryOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData mainOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData primaryOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData secondaryOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData mainOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData primaryOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData secondaryOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData mainOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData primaryOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData secondaryOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});

  Widget mainBackgroundGradient(AlignmentGeometry begin, AlignmentGeometry end, List<double> stops, List<double> opacities, TileMode tileMode, GradientTransform transform);
  Widget mainForegroundGradient(AlignmentGeometry begin, AlignmentGeometry end, List<double> stops, List<double> opacities, TileMode tileMode, GradientTransform transform);
  Widget primaryGradient(AlignmentGeometry begin, AlignmentGeometry end, List<double> stops, List<double> opacities, TileMode tileMode, GradientTransform transform);
  Widget secondaryGradient(AlignmentGeometry begin, AlignmentGeometry end, List<double> stops, List<double> opacities, TileMode tileMode, GradientTransform transform);

  Widget mainBackgroundRadialGradient(AlignmentGeometry center, double radius, List<double> stops, List<double> opacities, TileMode tileMode, AlignmentGeometry focal, double focalRadius, GradientTransform transform);
  Widget mainForegroundRadialGradient(AlignmentGeometry center, double radius, List<double> stops, List<double> opacities, TileMode tileMode, AlignmentGeometry focal, double focalRadius, GradientTransform transform);
  Widget primaryRadialGradient(AlignmentGeometry center, double radius, List<double> stops, List<double> opacities, TileMode tileMode, AlignmentGeometry focal, double focalRadius, GradientTransform transform);
  Widget secondaryRadialGradient(AlignmentGeometry center, double radius, List<double> stops, List<double> opacities, TileMode tileMode, AlignmentGeometry focal, double focalRadius, GradientTransform transform);

  Widget mainBackgroundSweepGradient(AlignmentGeometry center, double startAngle, double endAngle, List<double> stops, List<double> opacities, TileMode tileMode, GradientTransform transform);
  Widget mainForegroundSweepGradient(AlignmentGeometry center, double startAngle, double endAngle, List<double> stops, List<double> opacities, TileMode tileMode, GradientTransform transform);
  Widget primarySweepGradient(AlignmentGeometry center, double startAngle, double endAngle, List<double> stops, List<double> opacities, TileMode tileMode, GradientTransform transform);
  Widget secondarySweepGradient(AlignmentGeometry center, double startAngle, double endAngle, List<double> stops, List<double> opacities, TileMode tileMode, GradientTransform transform);
}