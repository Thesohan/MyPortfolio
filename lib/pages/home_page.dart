import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/config/assets.dart';
import 'package:my_protfolio/config/constants.dart';
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
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn
                ? Icon(Icons.wb_sunny)
                : Image.asset(
                    Assets.moon,
                    height: 20,
                    width: 20,
                  ),
            onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
          )
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
        title: Text(
          'Sohan Kathait',
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        background: ResponsiveWidget(
          largeScreen: _buildHeader(
              isSmall: false, imageParam: 200.0, textScaleFactor: 2.0),
          smallScreen: _buildHeader(
              isSmall: true, imageParam: 150.0, textScaleFactor: 1.3),
        ),
      ),
    );
  }

  Widget _buildHeader(
      {bool isSmall, double textScaleFactor, double imageParam}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: isSmall ? 32.0 : 64.0),
          child: Container(
            height: imageParam,
            width: imageParam,
            child: CircleAvatar(
              radius: imageParam,
              backgroundImage: Image.asset(Assets.avatar).image,
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Text(
                  'Mobile App Developer (Android,Flutter), \n Coder || Textrovert || Doer.\nLove my Friends and Family Unconditionally.',
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.center,
                  textScaleFactor: textScaleFactor,
                ),
              ),
              Flexible(
                child: Text(
                  'Do what you love to do and must do what you have to do...',
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: textScaleFactor == 2.0 ? 1.3 : 1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: FlatButton.icon(
            icon: Icon(
              Icons.description,
              color: Colors.blueGrey,
            ),
            label: Text('${isSmall ? '' : 'Resume'}'),
            onPressed: () =>
                html.window.open(Constants.RESUME, 'Sohan Kathait'),
          ),
        ),
      ],
    );
  }
}
