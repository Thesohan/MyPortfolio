import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/config/assets.dart';
import 'package:my_protfolio/config/constants.dart';
import 'package:my_protfolio/config/social_profile_link.dart';
import 'package:my_protfolio/tabs/about_tab.dart';
import 'package:my_protfolio/tabs/projects_tab.dart';
import 'package:my_protfolio/widgets/responsive_widget.dart';
import 'package:my_protfolio/widgets/theme_inherited_widget.dart';
import 'dart:html' as html;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    ProjectsTab(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(
              Icons.insert_drive_file,
              color: Colors.blueGrey,
            ),
            label: Text('Resume'),
            onPressed: () =>
                html.window.open(Constants.RESUME, 'Sohan Kathait'),
          ),
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn
                ? Icon(Icons.wb_sunny)
                : Image.asset(
                    Assets.moon,
                    height: 20,
                    width: 20,
                  ),
            onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
          ),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              _buildSliverAppBar(context),
            ];
          },
          body: tabWidgets[_selectedIndex]),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.card_travel),
          title: Text('Training and Internships'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mobile_screen_share),
          title: Text('Projects'),
        )
      ],
      currentIndex: _selectedIndex,
      onTap: (index) => setState(() => _selectedIndex = index),
      selectedItemColor: Theme.of(context).accentColor,
    );
  }

  SliverAppBar _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300.0,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        titlePadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
        title: Text(
          'Sohan Kathait',
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.start,
        ),
        background: ResponsiveWidget(
          largeScreen: _buildHeader(
            isSmall: false,
          ),
          smallScreen: _buildHeader(
            isSmall: true,
          ),
        ),
      ),
    );
  }

  Widget _buildHeader({bool isSmall}) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              height: 146.0,
              width: 146.0,
              child: CircleAvatar(
                radius: 146.0,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: Text(
                    'Mobile App Developer (Android,Flutter) \n Coder || Textrovert || Doer.\nLove my Friends and Family Unconditionally.',
                    style: Theme.of(context).textTheme.caption,
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.3,
                  ),
                ),
                Flexible(
                  child: Text(
                    'Do what you love to do and must do what you have to do...',
                    style: Theme.of(context).textTheme.caption,
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ]);
  }
}
