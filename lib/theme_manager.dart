library theme_manager;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_manager/src/color_palettes.dart';
import 'package:theme_manager/src/dark_theme_group.dart';
import 'package:theme_manager/src/light_theme_group.dart';
import 'package:theme_manager/src/theme_group.dart';

class ThemeManager extends ChangeNotifier {

  bool isDarkModeEnabled = false;
  //ColorPalette _colorPalette = PinkPalette();
  ThemeGroup _darkThemeGroup = DarkThemeGroup();//ColorPalette()
  ThemeGroup _lightThemeGroup = LightThemeGroup();//ColorPalette()

  ThemeManager() {//{colorPalette}
    //_colorPalette = colorPalette != null ? colorPalette : _colorPalette;
    //_darkThemeGroup.colorPalette = colorPalette;
    //_lightThemeGroup.colorPalette = colorPalette;
    //colorPalette(GreenPalette());
    updateColorPalette(new PinkPalette());
    print("Initilized Theme Manager");
  }

  updateColorPalette(ColorPalette colorPalette) {
    //_colorPalette = colorPalette;
    _darkThemeGroup.updateColorPalette(colorPalette);
    _lightThemeGroup.updateColorPalette(colorPalette);
    print("Set colorPalette in Theme Manager");
    notifyListeners();
  }
  
  void updateDarkModeEnabled(bool isDarkModeEnabled) {
    this.isDarkModeEnabled = isDarkModeEnabled;
    print("Update DarkMode enabled in Theme manager");
    notifyListeners();
  }

  ThemeData getTheme(ThemeGroupType type) {
    print("Get theme in Theme Manager");
    return isDarkModeEnabled ? _darkThemeGroup.theme(type) : _lightThemeGroup.theme(type);
  }

  ThemeData getPrimaryTheme() {
    return isDarkModeEnabled ? _darkThemeGroup.theme(ThemeGroupType.POM) : _lightThemeGroup.theme(ThemeGroupType.POM);
  }

  ThemeData getPrimaryLightTheme() {
    return _lightThemeGroup.theme(ThemeGroupType.POM);
  }

  ThemeData getPrimaryDarkTheme() {
    return _darkThemeGroup.theme(ThemeGroupType.POM);
  }

  ThemeMode getThemeMode() {
    return isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light;
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

enum ElevationLevel {
  NONE, LOW, MEDIUM, HIGH, EXTREME
}

//0dp, 2dp, 6dp, 12dp, 24dp

//TODO - Appbar is a bit harder, try again later
/*class ThemedAppBar extends AppBar {
  //TODO type = ThemeGroupType.POM,

  ThemedAppBar(
  {
    key,
    leading,
    automaticallyImplyLeading,
    title,
    actions,
    flexibleSpace,
    bottom,
    elevation,
    shape,
    backgroundColor,
    brightness,
    iconTheme,
    actionsIconTheme,
    textTheme,
    primary,
    centerTitle,
    excludeHeaderSemantics,
    titleSpacing,
    toolbarOpacity,
    bottomOpacity,}
      
      ) : super(key: key,
leading: leading,
automaticallyImplyLeading: automaticallyImplyLeading,
title: title,
actions: actions,
flexibleSpace: flexibleSpace,
bottom: bottom,
elevation: elevation,
shape: shape,
backgroundColor: backgroundColor,
brightness: brightness,
iconTheme: iconTheme,
actionsIconTheme: actionsIconTheme,
textTheme: textTheme,
primary: primary,
centerTitle: centerTitle,
excludeHeaderSemantics: excludeHeaderSemantics,
titleSpacing: titleSpacing,
toolbarOpacity: toolbarOpacity,
bottomOpacity: bottomOpacity,);

  @override
  Widget build(BuildContext context) {
    var appBar = super.build(context);
  }
}*/

/*class ThemedAppBar extends PreferredSizeWidget {

  //TODO - add all of the fields
  final ThemeGroupType type;
  final Key key;
  final Widget leading;
  final bool automaticallyImplyLeading;
  final Widget title;
  final List<Widget> actions;
  final Widget flexibleSpace;
  final PreferredSizeWidget bottom;
  final double elevation;
  final ShapeBorder shape;
  final Color backgroundColor;
  final Brightness brightness;
  final IconThemeData iconTheme;
  final IconThemeData actionsIconTheme;
  final TextTheme textTheme;
  final bool primary;
  final bool centerTitle;
  final bool excludeHeaderSemantics;
  final double titleSpacing;
  final double toolbarOpacity;
  final double bottomOpacity;

  ThemedAppBar(
      {
        this.type = ThemeGroupType.POM,
        this.key,
        this.leading,
        this.automaticallyImplyLeading,
        this.title,
        this.actions,
        this.flexibleSpace,
        this.bottom,
        this.elevation,
        this.shape,
        this.backgroundColor,
        this.brightness,
        this.iconTheme,
        this.actionsIconTheme,
        this.textTheme,
        this.primary,
        this.centerTitle,
        this.excludeHeaderSemantics,
        this.titleSpacing,
        this.toolbarOpacity,
        this.bottomOpacity,
      }
  );

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager> (
      builder: (context, themeManager, child) {
        //getTextStyle(themeManager.getTheme(type)),
        return AppBar(
          key: key,
          leading: leading,
          automaticallyImplyLeading: automaticallyImplyLeading,
          title: title,
          actions: actions,
          flexibleSpace: flexibleSpace,
          bottom: bottom,
          elevation: elevation,
          shape: shape,
          backgroundColor: backgroundColor,
          brightness: brightness,
          iconTheme: iconTheme,
          actionsIconTheme: actionsIconTheme,
          textTheme: textTheme,
          primary: primary,
          centerTitle: centerTitle,
          excludeHeaderSemantics: excludeHeaderSemantics,
          titleSpacing: titleSpacing,
          toolbarOpacity: toolbarOpacity,
          bottomOpacity: bottomOpacity,
        );
      }
    );
  }
}*/

abstract class ThemedText extends StatelessWidget {

  final String text;
  final Key key;
  final ThemeGroupType type;
  final StrutStyle strutStyle;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final Locale locale;
  final bool softWrap;
  final TextOverflow overflow;
  final double textScaleFactor;
  final int maxLines;
  final String semanticsLabel;
  final TextWidthBasis textWidthBasis;
  final TextHeightBehavior textHeightBehavior;

  ThemedText(this.text,
    {
      this.key,
      this.type = ThemeGroupType.MOM,
      this.strutStyle,
      this.textAlign,
      this.textDirection,
      this.locale,
      this.softWrap,
      this.overflow,
      this.textScaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.textWidthBasis,
      this.textHeightBehavior
    }
  );

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager> (
      builder: (context, themeManager, child) {
        return Text(
          text,
          key: key,
          style: getTextStyle(themeManager.getTheme(type)),
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior
        );
      },
    );
  }

  //Subclasses just need to override this for magic pants to appear :p
  TextStyle getTextStyle(ThemeData themeData);

}

class ThemedTitle extends ThemedText {

  ThemedTitle(text, {key, type, strutStyle, textAlign, textDirection, locale, softWrap, overflow, textScaleFactor, maxLines, semanticsLabel, textWidthBasis, textHeightBehavior})
  : super(text,
      key: key,
      type: type,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior:textHeightBehavior
  );

  @override
  TextStyle getTextStyle(ThemeData themeData) {
    return themeData.textTheme.headline6;//title was depricated
  }

}

class ThemedSubTitle extends ThemedText {

  ThemedSubTitle(text, {key, type, strutStyle, textAlign, textDirection, locale, softWrap, overflow, textScaleFactor, maxLines, semanticsLabel, textWidthBasis, textHeightBehavior})
      : super(text,
      key: key,
      type: type,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior:textHeightBehavior
  );

  @override
  TextStyle getTextStyle(ThemeData themeData) {
    return themeData.textTheme.subtitle1;//title was depricated
  }

}

class ThemedSubTitle2 extends ThemedText {

  ThemedSubTitle2(text, {key, type, strutStyle, textAlign, textDirection, locale, softWrap, overflow, textScaleFactor, maxLines, semanticsLabel, textWidthBasis, textHeightBehavior})
      : super(text,
      key: key,
      type: type,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior:textHeightBehavior
  );

  @override
  TextStyle getTextStyle(ThemeData themeData) {
    return themeData.textTheme.subtitle2;
  }

}

enum IconSize {
  SMALL, DEFAULT, LARGE
}

class ThemedIcon extends StatelessWidget {

  final IconData icon;
  final Key key;
  final double size;//TODO - break down by simple sizes vs pixels: IconSize iconSize;
  final ThemeGroupType type;
  final String semanticLabel;
  final TextDirection textDirection;

  ThemedIcon(this.icon, {this.key, this.size, this.type  = ThemeGroupType.MOM, this.semanticLabel, this.textDirection});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager> (
      builder: (context, themeManager, child) {
        return Icon(
          icon,
          key: key,
          size: size,
          color: themeManager.getTheme(type).iconTheme.color,
          semanticLabel: semanticLabel,
          textDirection: textDirection,
        );
      },
    );
  }
}