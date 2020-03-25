import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/config/assets.dart';
import 'package:my_protfolio/config/companies.dart';
import 'package:my_protfolio/config/constants.dart';
import 'package:my_protfolio/config/projects.dart';
import 'package:my_protfolio/widgets/company_widget.dart';
import 'package:my_protfolio/widgets/project_widget.dart';
import 'package:my_protfolio/widgets/responsive_widget.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: ListView(
            primary: true,
            shrinkWrap: true,
            children: <Widget>[
              ResponsiveWidget(
                largeScreen: GridView.count(
                  primary: false,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio:14.0/6.0 ,
                  children: List.generate(
                    companies.length,
                    (index) => CompanyWidget(
                      companyModel: companies[index],
                    ),
                  ),
                ),

                smallScreen: ListView.builder(
                shrinkWrap: true,primary: false,  itemCount: projects.length,
                  itemBuilder: (context, index) => CompanyWidget(
                    companyModel: companies[index],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.github)),
                    label: Text('Github'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_GITHUB, 'Sohan Kathait'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.twitter)),
                    label: Text('Twitter'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_TWITTER, 'adityadroid'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.ibit)),
                    label: Text('InterviewBit'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_INTERVIEWBIT, 'Sohan Kathait'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.hacker)),
                    label: Text('Hackerearth'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_HACKEREARTH, 'Sohan Kathait'),
                  ),FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.instagram)),
                    label: Text('Instagram'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_INSTAGRAM, 'Sohan Kathait'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.facebook)),
                    label: Text('Facebook'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_FACEBOOK, 'Sohan Kathait'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.linkedin)),
                    label: Text('Linkedin'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_LINKEDIN, 'Sohan Kathait'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
