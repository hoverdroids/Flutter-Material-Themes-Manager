library material_themes_manager;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:material_themes_manager/src/color_palettes.dart';
import 'package:material_themes_manager/src/dark_theme_group.dart';
import 'package:material_themes_manager/src/light_theme_group.dart';
import 'package:material_themes_manager/src/theme_group.dart';

class MaterialThemesManager extends ChangeNotifier {

  bool isDarkModeEnabled = false;
  //ColorPalette _colorPalette = PinkPalette();
  ThemeGroup _darkThemeGroup = DarkThemeGroup();//ColorPalette()
  ThemeGroup _lightThemeGroup = LightThemeGroup();//ColorPalette()

  MaterialThemesManager() {//{colorPalette}
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









enum IconSize {
  SMALL, DEFAULT, LARGE
}


class ThemedSwitch extends StatelessWidget {

  final ThemeGroupType type;
  final Key key;
  final bool value;
  final onChanged;
  //final activeColor;
  final activeTrackColor;
  final inactiveThumbColor;
  final inactiveTrackColor;
  final activeThumbImage;
  final onActiveThumbImageError;
  final inactiveThumbImage;
  final onInactiveThumbImageError;
  final materialTapTargetSize;
  final dragStartBehavior;
  final mouseCursor;
  final focusColor;
  final hoverColor;
  final focusNode;
  final autofocus;

  ThemedSwitch({
    this.key,
    @required this.value,
    @required this.onChanged,
    this.type = ThemeGroupType.MOM,
    //this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.onActiveThumbImageError,
    this.inactiveThumbImage,
    this.onInactiveThumbImageError,
    this.materialTapTargetSize,
    this.dragStartBehavior,
    this.mouseCursor,
    this.focusColor,
    this.hoverColor,
    this.focusNode,
    this.autofocus});

  @override
  Widget build(BuildContext context) {
    return Consumer<MaterialThemesManager> (
        builder: (context, themeManager, child) {
          //Construct a default widget in order to fall back on default values when the optional params aren't passed
          var defaultSwitch = Switch(value: value, onChanged: onChanged);

          return Switch(
            key: key != null ? key : defaultSwitch.key,
            value: value,
            onChanged: onChanged,
            activeColor: themeManager.getTheme(type).toggleableActiveColor,
            activeTrackColor: activeTrackColor != null ? activeTrackColor : defaultSwitch.activeTrackColor,
            inactiveThumbColor: inactiveThumbColor != null ? inactiveThumbColor : defaultSwitch.inactiveThumbColor,
            inactiveTrackColor: inactiveTrackColor != null ? inactiveTrackColor : defaultSwitch.inactiveTrackColor,
            activeThumbImage: activeThumbImage != null ? activeThumbImage : defaultSwitch.activeThumbImage,
            onActiveThumbImageError: onActiveThumbImageError != null ? onActiveThumbImageError : defaultSwitch.onActiveThumbImageError,
            inactiveThumbImage: inactiveThumbImage != null ? inactiveThumbImage : defaultSwitch.inactiveThumbImage,
            onInactiveThumbImageError: onInactiveThumbImageError != null ? onInactiveThumbImageError : defaultSwitch.onInactiveThumbImageError,
            materialTapTargetSize: materialTapTargetSize != null ? materialTapTargetSize : defaultSwitch.materialTapTargetSize,
            dragStartBehavior: dragStartBehavior != null ? dragStartBehavior : defaultSwitch.dragStartBehavior,
            mouseCursor: mouseCursor != null ? mouseCursor : defaultSwitch.mouseCursor,
            focusColor: focusColor != null ? focusColor : defaultSwitch.focusColor,
            hoverColor: hoverColor != null ? hoverColor : defaultSwitch.hoverColor,
            focusNode: focusNode != null ? focusNode : defaultSwitch.focusNode,
            autofocus: autofocus != null ? autofocus : defaultSwitch.autofocus,
          );
        }
    );
  }
}

class ThemedIcon extends StatelessWidget {

  final IconData icon;
  final Key key;
  final double size;//TODO - break down by simple sizes vs pixels: IconSize iconSize;
  final ThemeGroupType type;
  final String semanticLabel;
  final TextDirection textDirection;

  ThemedIcon(this.icon, {this.type  = ThemeGroupType.MOM, this.key, this.size, this.semanticLabel, this.textDirection});

  @override
  Widget build(BuildContext context) {

    //construct a default widget in order to fall back on default values when the optional params aren't passed
    var defaultIcon = Icon(icon);

    return Consumer<MaterialThemesManager> (
      builder: (context, themeManager, child) {
        return Icon(
          icon,
          key: key != null ? key : defaultIcon.key,
          size: size != null ? size : defaultIcon.size,
          color: themeManager.getTheme(type).iconTheme.color,
          semanticLabel: semanticLabel != null ? semanticLabel : defaultIcon.semanticLabel,
          textDirection: textDirection != null ? textDirection : defaultIcon.textDirection,
        );
      },
    );
  }
}

abstract class ThemedText extends StatelessWidget {

  final String text;
  final ThemeGroupType type;
  final Key key;
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
        this.type = ThemeGroupType.MOM,
        this.key,
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

    var defaultText = Text(text);

    return Consumer<MaterialThemesManager> (
      builder: (context, themeManager, child) {
        return Text(
          text,
          key: key != null ? key: defaultText.key,
          style: getTextStyle(themeManager.getTheme(type)),
          strutStyle: strutStyle != null ? strutStyle : defaultText.strutStyle,
          textAlign: textAlign != null ? textAlign : defaultText.textAlign,
          textDirection: textDirection != null ? textDirection : defaultText.textDirection,
          locale: locale != null ? locale : defaultText.locale,
          softWrap: softWrap != null ? softWrap: defaultText.softWrap,
          overflow: overflow != null ? overflow: defaultText.overflow,
          textScaleFactor: textScaleFactor != null ? textScaleFactor : defaultText.textScaleFactor,
          maxLines: maxLines != null ? maxLines : defaultText.maxLines,
          semanticsLabel: semanticsLabel != null ? semanticsLabel : defaultText.semanticsLabel,
          textWidthBasis: textWidthBasis != null ? textWidthBasis : defaultText.textWidthBasis,
          textHeightBehavior: textHeightBehavior != null ? textHeightBehavior : defaultText.textHeightBehavior,
        );
      },
    );
  }

  //Subclasses just need to override this for magic pants to appear :p
  TextStyle getTextStyle(ThemeData themeData);

}

class ThemedTitle extends ThemedText {

  ThemedTitle(text, {type, key, strutStyle, textAlign, textDirection, locale, softWrap, overflow, textScaleFactor, maxLines, semanticsLabel, textWidthBasis, textHeightBehavior})
      : super(
      text,
      type: type,
      key: key,
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
      : super(
      text,
      type: type,
      key: key,
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
      : super(
      text,
      type: type,
      key: key,
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