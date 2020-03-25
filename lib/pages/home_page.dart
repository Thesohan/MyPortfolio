import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/config/assets.dart';
import 'package:my_protfolio/tabs/about_tab.dart';
import 'package:my_protfolio/tabs/projects_tab.dart';
import 'package:my_protfolio/widgets/theme_inherited_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
//    BlogTab(),
    ProjectsTab(),
  ];

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
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
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              _buildSliverAppBar(context),
              _buildSilverPersistentHeader(context),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: tabWidgets,
          ),
        ),
      ),
    );
  }

  SliverPersistentHeader _buildSilverPersistentHeader(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _SliverAppBarDelegate(
        TabBar(
          isScrollable: false,
          controller: _tabController,
          indicatorColor:ThemeSwitcher.of(context).isDarkModeOn? Colors.white:Colors.black,
          tabs: [
            Tab(
              text: "Training and Internships",
            ),
            Tab(text: "Projects"),
          ],
        ),
      ),
      pinned: false,
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
        background: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: Container(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  radius: 100,
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
                      textScaleFactor: 2,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Do what you love to do and must do what you have to do...',
                      style: Theme.of(context).textTheme.caption,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
