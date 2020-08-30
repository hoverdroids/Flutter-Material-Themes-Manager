import 'package:flutter/material.dart';

import '../material_themes_manager.dart';

abstract class ThemeGroup {

  ColorPalette colorPalette = ColorPalette();

  void updateColorPalette(ColorPalette colorPalette) {
    this.colorPalette = colorPalette;
  }
  
  Widget backgroundGradient(BackgroundGradientType type) {
    if (type == BackgroundGradientType.MAIN_BG) {
      return mainBackgroundGradient();
    } else if (type == BackgroundGradientType.MAIN_FG) {
      return mainForegroundGradient();
    } else if (type == BackgroundGradientType.PRIMARY) {
      return primaryGradient();
    } else {
      return secondaryGradient();
    }
  }

  ThemeData theme(ThemeGroupType themeGroupType, {Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL}) {
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

  ThemeData mainOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL});
  ThemeData primaryOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL});
  ThemeData secondaryOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL});
  ThemeData mainOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL});
  ThemeData primaryOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL});
  ThemeData secondaryOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL});
  ThemeData mainOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL});
  ThemeData primaryOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL});
  ThemeData secondaryOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL});
  ThemeData mainOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL});
  ThemeData primaryOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL});
  ThemeData secondaryOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.MEDIUM, IconSize iconSize = IconSize.SMALL});

  Widget mainBackgroundGradient();
  Widget mainForegroundGradient();
  Widget primaryGradient();
  Widget secondaryGradient();

  FontWeight getFontWeight(Emphasis emphasis) {
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

  double getIconSize(IconSize size) {
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

  double getElevation(ElevationLevel elevation) {
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

}