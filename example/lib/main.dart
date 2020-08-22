import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_manager/theme_manager.dart';
import 'main_pager.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeManager>(
      builder: (context) => ThemeManager(),
      child: HomeApp(),
    ),
  );
}

class HomeApp extends StatelessWidget {
  //We are consuming the theme change at the app level because light/dark mode swap
  //affects every widget's appearance in the app
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager>(
        builder: (context, themeManager, child){
          return MaterialApp(
            title: "Theme Manager Demo",
            debugShowCheckedModeBanner: false,
            theme: themeManager.getPrimaryLightTheme(),
            darkTheme: themeManager.getPrimaryDarkTheme(),
            home: MainPager(),
            themeMode: themeManager.getThemeMode(),
          );
        }
    );
  }
}