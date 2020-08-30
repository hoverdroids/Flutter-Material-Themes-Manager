import 'package:flutter/material.dart';
import 'package:material_themes_manager/material_themes_manager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // Providers are above [MyApp] instead of inside it, so that tests can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MaterialThemesManager()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MaterialThemesManager>(
      builder: (context, themeManager, child) {
        return MaterialApp(
          title: "Theme Manager Demo",
          home: MyHomePage(),
          debugShowCheckedModeBanner: themeManager.isDarkModeEnabled,
          themeMode: themeManager.getThemeMode(),
          theme: themeManager.getPrimaryLightTheme(),
          darkTheme: themeManager.getPrimaryDarkTheme()
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  //We are consuming the theme change at the app level because light/dark mode swap
  //affects every widget's appearance in the app
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<MaterialThemesManager>().getTheme(ThemeGroupType.POM).appBarTheme.color,
        title: const Text('Example'),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            context.watch<MaterialThemesManager>().getBackgroundGradient(BackgroundGradientType.MAIN_BG),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Is Dark Mode Enabled:'),
                  /// Extracted as a separate widget for performance optimization.
                  /// As a separate widget, it will rebuild independently from [MyHomePage].
                  ///
                  /// This is totally optional (and rarely needed).
                  /// Similarly, we could also use [Consumer] or [Selector].
                  const DarkModeEnabledText(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<MaterialThemesManager>().toggleDarkModeEnabled(),
        tooltip: 'Toggle Dark Mode',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class DarkModeEnabledText extends StatelessWidget {
  const DarkModeEnabledText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      /// Calls `context.watch` to make [MyHomePage] rebuild when [Counter] changes.
      '${context.watch<MaterialThemesManager>().isDarkModeEnabled.toString()}',
    );
  }
}