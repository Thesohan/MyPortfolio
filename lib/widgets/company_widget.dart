import 'package:flutter/material.dart';
import 'package:my_protfolio/models/company_model.dart';
import 'dart:html' as html;

import 'package:my_protfolio/models/project_model.dart';

class CompanyWidget extends StatelessWidget {
  final CompanyModel companyModel;

  const CompanyWidget({Key key, this.companyModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: InkWell(
        onTap: onCompanyClick,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  companyModel.image,
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
                      Text(companyModel.name,
                          style: Theme.of(context).textTheme.headline6),
                      SizedBox(
                        height: height * .01,
                      ),
                      Text(
                        companyModel.description,
                        textScaleFactor: 1.2,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          companyModel.date,
                          textScaleFactor: 1.2,
                          style: Theme.of(context).textTheme.caption,
                        ),
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

  void onCompanyClick() {
    if (companyModel.link != null) html.window.open(companyModel.link, 'Sohan Kathait');
  }
}
