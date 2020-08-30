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

  ThemeData theme(ThemeGroupType themeGroupType, {bool isImportant = false}) {
    if(themeGroupType == ThemeGroupType.MOM) {
      return mainOnMain(isImportant: isImportant);
    } else if (themeGroupType == ThemeGroupType.POM) {
      return primaryOnMain(isImportant: isImportant);
    } else if (themeGroupType == ThemeGroupType.SOM) {
      return secondaryOnMain(isImportant: isImportant);
    } else if (themeGroupType == ThemeGroupType.MOP) {
      return mainOnPrimary(isImportant: isImportant);
    } else if (themeGroupType == ThemeGroupType.POP) {
      return primaryOnPrimary(isImportant: isImportant);
    } else if (themeGroupType == ThemeGroupType.SOP) {
      return secondaryOnPrimary(isImportant: isImportant);
    } else if (themeGroupType == ThemeGroupType.MOS) {
      return mainOnSecondary();
    } else if (themeGroupType == ThemeGroupType.POS) {
      return primaryOnSecondary();
    } else if (themeGroupType == ThemeGroupType.SOS) {
      return secondaryOnSecondary();
    } else if (themeGroupType == ThemeGroupType.MOI) {
      return mainOnImage();
    } else if (themeGroupType == ThemeGroupType.POI) {
      return primaryOnImage();
    } else {
      return secondaryOnImage();
    }
  }

  ThemeData mainOnMain({Emphasis emphasis = Emphasis.NONE});
  ThemeData primaryOnMain({Emphasis emphasis = Emphasis.NONE});
  ThemeData secondaryOnMain({Emphasis emphasis = Emphasis.NONE});
  ThemeData mainOnPrimary({Emphasis emphasis = Emphasis.NONE});
  ThemeData primaryOnPrimary({Emphasis emphasis = Emphasis.NONE});
  ThemeData secondaryOnPrimary({Emphasis emphasis = Emphasis.NONE});
  ThemeData mainOnSecondary({Emphasis emphasis = Emphasis.NONE});
  ThemeData primaryOnSecondary({Emphasis emphasis = Emphasis.NONE});
  ThemeData secondaryOnSecondary({Emphasis emphasis = Emphasis.NONE});
  ThemeData mainOnImage({Emphasis emphasis = Emphasis.NONE});
  ThemeData primaryOnImage({Emphasis emphasis = Emphasis.NONE});
  ThemeData secondaryOnImage({Emphasis emphasis = Emphasis.NONE});

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

}