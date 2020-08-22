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
                  title: title("Title $pos", themeGroupType),
                  subtitle: subTitle("SubTitle $pos", themeGroupType),
                  leading: icon(Icons.alarm, themeGroupType),
                  trailing: icon(Icons.chevron_right, themeGroupType),
                ),
              );
            },
          ),
        )
    );
  }
}