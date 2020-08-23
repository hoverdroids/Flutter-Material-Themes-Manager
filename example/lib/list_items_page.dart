import 'package:flutter/material.dart';
import 'package:theme_manager/theme_manager.dart';

class ListItemsPage extends StatelessWidget {

  final ThemeGroupType themeGroupType;

  ListItemsPage({this.themeGroupType = ThemeGroupType.MOM});

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
                  title: ThemedTitle("Title $pos", type: themeGroupType),
                  subtitle: ThemedSubTitle("SubTitle $pos", type:themeGroupType),
                  leading: ThemedIcon(Icons.alarm, type:themeGroupType),
                  trailing: ThemedIcon(Icons.chevron_right, type:themeGroupType),
                ),
              );
            },
          ),
        )
    );
  }
}