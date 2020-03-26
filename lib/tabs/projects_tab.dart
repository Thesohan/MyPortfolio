import 'package:flutter/material.dart';
import 'package:my_protfolio/config/projects.dart';
import 'package:my_protfolio/config/social_profile_link.dart';
import 'package:my_protfolio/widgets/project_widget.dart';
import 'package:my_protfolio/widgets/responsive_widget.dart';

class ProjectsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      children: <Widget>[
        ResponsiveWidget(
          largeScreen: GridView.count(
            primary: false,
            shrinkWrap: true,
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            crossAxisCount: 2,
            childAspectRatio:14.0/6.0,
            children: List.generate(
              projects.length,
              (index) => ProjectWidget(projects[index],),
            ),
          ),
          smallScreen: ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: projects.length,
            itemBuilder: (context, index) => ProjectWidget(
              projects[index],
            ),
          ),
        ),
        SocialProfile(),
      ],
    );
  }
}
