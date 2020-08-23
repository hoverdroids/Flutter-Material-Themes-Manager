import 'package:flutter/material.dart';
import 'package:theme_manager/theme_manager.dart';

//This will appear as the user expects with standard theming in light/dark (e.g. white/black bg with colors on buttons and titles, all else are greys)
class MainThemeListItemsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, pos) {
              return Card(
                elevation: 0,
                child: ListTile(
                  title: ThemedTitle("Title $pos", type: ThemeGroupType.POM),
                  subtitle: ThemedSubTitle("SubTitle $pos", type: ThemeGroupType.MOM),
                  leading: ThemedIcon(Icons.alarm, type: ThemeGroupType.MOM),
                  trailing: ThemedIcon(Icons.chevron_right, type: ThemeGroupType.MOM),
                ),
              );
            },
          ),
        )
    );
  }
}