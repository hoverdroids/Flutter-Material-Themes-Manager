import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:material_themes_manager/material_themes_manager.dart';
import 'main_theme_list_items_page.dart';
import 'wireframe_theme_list_items_page.dart';
import 'grayscale_theme_list_items_page.dart';

class MainPager extends StatefulWidget {
  MainPager({Key key}) : super(key: key);
  _MainPagerState createState() => _MainPagerState();
}

class _MainPagerState extends State<MainPager> {

  int _selectedItem = 0;

  //TODO - are any/all of the following possible/
  //primary (ie primary cards on primary bg)
  //what you'd expect (ie primary cards on white/black bg)
  //inverted (ie white/black cards on primary bg)
  var _pages = [
    WireframeThemeListItemsPage(),
    GrayscaleThemeListItemsPage(),
    MainThemeListItemsPage(),
  ];
  var _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    //TODO - each page needs its own appbar and navbar to prove the point
    return Scaffold(
      body: PageView(
        children: _pages,
        onPageChanged: (index){
          setState(() {
            _selectedItem = index;
          });
        },
        controller: _pageController,
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('List on Main Color')),
          BottomNavigationBarItem(icon: Icon(Icons.photo), title: Text('List on Primary Color')),
        ],
        currentIndex: _selectedItem,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
            _pageController.animateToPage(
                _selectedItem,
                duration: Duration(milliseconds: 200),
                curve: Curves.linear
            );
          });
        },
      ),*/
    );
  }
}