import 'package:flutter/material.dart';
import 'package:material_themes_manager/material_themes_manager.dart';
import 'package:provider/provider.dart';

//This will appear as the user expects with standard theming in light/dark (e.g. white/black bg with colors on buttons and titles, all else are greys)
class MainThemeListItemsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Provider.of<MaterialThemesManager>(context).getTheme(ThemeGroupType.POM).appBarTheme.color,//TODO - clunky but it's hard to subclass appbar
          title: ThemedTitle('Primary on Main', type: ThemeGroupType.MOP),
          //elevation: 0,//removes the shadow
          leading: ThemedIcon(Icons.menu, type: ThemeGroupType.MOP),
          actions: <Widget>[
            ThemedSwitch(
              type: ThemeGroupType.MOP,
              value: Provider.of<MaterialThemesManager>(context).isDarkModeEnabled,
              onChanged: (boolVal) {
                Provider.of<MaterialThemesManager>(context).updateDarkModeEnabled(boolVal);
              },
            )
          ],
        ),
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