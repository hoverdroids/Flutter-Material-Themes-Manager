import 'package:flutter/material.dart';
import 'package:theme_manager/src/color_palettes.dart';

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

abstract class ThemeGroup {

  ColorPalette colorPalette = ColorPalette();

  ThemeGroup([this.colorPalette]);

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

}