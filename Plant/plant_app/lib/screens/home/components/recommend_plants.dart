import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendPlantCard(
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () { Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen())); },
          ),
          RecommendPlantCard(
            image: 'assets/images/image_2.png',
            title: 'Angelica',
            country: 'Russia',
            price: 440,
            press: () {},
          ),
          RecommendPlantCard(
            image: 'assets/images/image_3.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  final Function press;

  const RecommendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '$title\n'.toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                            text: '$country'.toUpperCase(),
                            style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                          )
                        ],
                      )
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}