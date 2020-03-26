import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/config/assets.dart';
import 'package:my_protfolio/config/constants.dart';
import 'dart:html' as html;
class SocialProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[

          Wrap(
            runAlignment: WrapAlignment.center,
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
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
                    child: Image.asset(Assets.hacker)),
                label: Text('Hackerearth'),
                onPressed: () => html.window
                    .open(Constants.PROFILE_HACKEREARTH, 'Sohan Kathait'),
              ),
            ],
          ),
          Wrap(
            runAlignment: WrapAlignment.center,
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: SizedBox(
                    width: 20, height: 20, child: Image.asset(Assets.ibit)),
                label: Text('InterviewBit'),
                onPressed: () => html.window
                    .open(Constants.PROFILE_INTERVIEWBIT, 'Sohan Kathait'),
              ),
              FlatButton.icon(
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
              ),
              FlatButton.icon(
                icon: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(Assets.twitter)),
                label: Text('Twitter'),
                onPressed: () => html.window
                    .open(Constants.PROFILE_TWITTER, 'Sohan Kathait'),
              ),
            ],
          )
        ],
    );
  }
}