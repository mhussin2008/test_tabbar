
import 'package:flutter/cupertino.dart';
import 'package:test_tabbar/main.dart';

import 'MyStatefulWidget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    theme: CupertinoTheme.of(context).copyWith(
      brightness: Brightness.light,
    ),
    home: const MainPage(),
  );
}
}