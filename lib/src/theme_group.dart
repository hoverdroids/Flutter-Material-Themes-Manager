import 'package:flutter/material.dart';

import '../material_themes_manager.dart';

abstract class ThemeGroup {

  ColorPalette colorPalette = ColorPalette();

  void updateColorPalette(ColorPalette colorPalette) {
    this.colorPalette = colorPalette;
  }
  
  Widget backgrounddGradient(BackgroundGradientType type) {
    if (type == BackgroundGradientType.MAIN_BG) {
      return primaryGradient();
    } else if (type == BackgroundGradientType.MAIN_FG) {
      return secondaryGradient();
    } else if (type == BackgroundGradientType.PRIMARY) {
      return mainGradient();
    } else {
      return primaryGradient();
    }
  }

  ThemeData theme(ThemeGroupType themeGroupType) {
    if(themeGroupType == ThemeGroupType.MOM) {
      return mainOnMain();
    } else if (themeGroupType == ThemeGroupType.POM) {
      return primaryOnMain();
    } else if (themeGroupType == ThemeGroupType.SOM) {
      return secondaryOnMain();
    } else if (themeGroupType == ThemeGroupType.MOP) {
      return mainOnPrimary();
    } else if (themeGroupType == ThemeGroupType.POP) {
      return primaryOnPrimary();
    } else if (themeGroupType == ThemeGroupType.SOP) {
      return secondaryOnPrimary();
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

  ThemeData mainOnMain();
  ThemeData primaryOnMain();
  ThemeData secondaryOnMain();
  ThemeData mainOnPrimary();
  ThemeData primaryOnPrimary();
  ThemeData secondaryOnPrimary();
  ThemeData mainOnSecondary();
  ThemeData primaryOnSecondary();
  ThemeData secondaryOnSecondary();
  ThemeData mainOnImage();
  ThemeData primaryOnImage();
  ThemeData secondaryOnImage();

  Widget mainBackgroundGradient();
  Widget mainForegroundGradient();
  Widget primaryGradient();
  Widget secondaryGradient();

}