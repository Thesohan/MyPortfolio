import 'package:flutter/material.dart';
import 'package:my_protfolio/config/projects.dart';
import 'package:my_protfolio/widgets/project_widget.dart';
import 'package:my_protfolio/widgets/responsive_widget.dart';

class ProjectsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: GridView.count(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
        crossAxisCount: 2,
        childAspectRatio:14.0/6.0,
        children: List.generate(
          projects.length,
          (index) => ProjectWidget(projects[index], 0),
        ),
      ),
      smallScreen: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) => ProjectWidget(
          projects[index],
          (index == projects.length - 1 ? 16.0 : 0),
        ),
      ),
    );
  }
}
