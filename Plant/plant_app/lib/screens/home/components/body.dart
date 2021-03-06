import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';
import 'package:plant_app/screens/home/components/header_with_search_box.dart';
import 'package:plant_app/screens/home/components/recommend_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: 'Recommended', press: () {}),
          RecommendPlants(),
          TitleWithMoreButton(title: 'Featured Plants', press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}


