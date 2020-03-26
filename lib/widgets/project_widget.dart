import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:my_protfolio/models/project_model.dart';

class ProjectWidget extends StatelessWidget {
  final Project _project;
  ProjectWidget(this._project);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
      child: InkWell(
        onTap: onProjectClick,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  _project.image,
                  width: width * .14,
                  height: width * .14,
                ),
              ),
              Container(
                width: 18.0,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_project.name,
                          style: Theme.of(context).textTheme.headline6),
                      SizedBox(
                        height: height * .01,
                      ),
                      Text(
                        _project.description,
                        textScaleFactor: 1.2,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onProjectClick() {
    if (_project.link != null) html.window.open(_project.link, 'Sohan Kathait');
  }
}
