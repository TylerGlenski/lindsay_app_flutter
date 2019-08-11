import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'reuseable_card.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double fontSizeBig = queryData.size.height / 14;
    double fontSize = queryData.size.height / 34;
    double letterSpacing = fontSize / 6;
    double lineWidth = queryData.size.width / 3;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        kCircleAvatar,
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                'Lindsay\'s Bling',
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontSize: fontSizeBig,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                kCompanyDescription,
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: fontSize,
                  color: Colors.pink[400],
                  letterSpacing: letterSpacing,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: lineWidth,
                child: Divider(color: Colors.teal[100]),
              ),

              //########## Card 1 ##########
              ReuseableCard(
                text: kCardOneText,
                fontSize: fontSize,
                fontFamily: 'SourceSansPro',
                color: kCardBackgroundColor,
                textColor: kCardTextColor,
                url: kPaparazziURL,
              ),
              //########## Card 2 ##########
              ReuseableCard(
                text: kCardTwoText,
                fontSize: fontSize,
                fontFamily: 'SourceSansPro',
                color: kCardBackgroundColor,
                textColor: kCardTextColor,
                url: kShopifyURL,
              ),
              //########## Card 3 ##########
              ReuseableCard(
                text: kCardThreeText,
                fontSize: fontSize,
                fontFamily: 'SourceSansPro',
                color: kCardBackgroundColor,
                textColor: kCardTextColor,
                url: kEmailURL,
              ),
//              Center(
//                child: Text(
//                  'lglenski@gmail.com',
//                  style: TextStyle(color: Colors.white),
//                ),
//              ),
            ],
          ),
        ),
      ],
    );
  }
}
