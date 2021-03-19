import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/image_and_icons.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIconsCard(size: size),
          TitleAndPrice(title: 'Angelica', country: 'Russia', price: 440),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Buy Now'),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20))
                    )
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text('Description'),
                )
              )
            ],
          ),
        ],
      ),
    );
  }
}
