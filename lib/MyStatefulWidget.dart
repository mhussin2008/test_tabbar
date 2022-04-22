
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_tabbar/firstpage.dart';
import 'package:test_tabbar/secondpage.dart';

import 'SettingsPage.dart';
import 'main_route.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
            label: 'Setting',
            icon: Icon(CupertinoIcons.settings),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 1:
            return CupertinoTabView(
              routes: <String, WidgetBuilder>{
                'default': (context) => const SettingsPage(),
                'firstpage': (context) => const firstpage(),
                'secondpage': (context) => const secondpage(),
              },
              builder: (context) => const SettingsPage(),
            );
            break;
          default:
            return  DefaultRoute();
        }
      },
    );
  }
}

