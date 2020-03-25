import 'package:flutter/material.dart';
import 'package:my_protfolio/pages/home_page.dart';
import 'package:my_protfolio/widgets/theme_inherited_widget.dart';

import 'config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: MyProtfolio()
    );
  }
}
class MyProtfolio extends StatelessWidget {
  const MyProtfolio({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sohan Kathait',
      theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: HomePage(),
    );
  }
}
