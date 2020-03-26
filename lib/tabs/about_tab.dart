import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/config/companies.dart';
import 'package:my_protfolio/config/projects.dart';
import 'package:my_protfolio/config/social_profile_link.dart';
import 'package:my_protfolio/widgets/company_widget.dart';
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
                  childAspectRatio: 14.0 / 6.0,
                  children: List.generate(
                    companies.length,
                    (index) => CompanyWidget(
                      companyModel: companies[index],
                    ),
                  ),
                ),
                smallScreen: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: projects.length,
                  itemBuilder: (context, index) => CompanyWidget(
                    companyModel: companies[index],
                  ),
                ),
              ),
              SocialProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
