import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_view.dart';

//  titles and avatars

const kCompanyName = 'Lindsay\'s Bling';
const kCompanyDescription = 'Jewelry Consulting';

const kCircleAvatar = CircleAvatar(
  radius: 50.0,
  backgroundImage: AssetImage('images/avatar.jpg'),
);

// card constants

const kBackgroundColorApp = Colors.black;
const kCardBackgroundColor = Colors.pink;
const kCardIconColor = Colors.black;
const kCardTextColor = Colors.black;
const kCardOneText = 'Paparazzi';
const kCardTwoText = 'Shopify';
const kCardThreeText = 'Gmail Me';

// URL's
const kEmailURL = "mailto:lglenski@gmail.com?subject=Support&body=Lindsay, ";
const kPaparazziURL = "https://paparazziaccessories.com/309168/";
const kShopifyURL = "http://lindsays-bing.myshopify.com/";

const kCardIconCart = Icon(
  FontAwesomeIcons.shoppingCart,
  color: kCardIconColor,
);

const kCardIconEmail = Icon(
  Icons.email,
  color: kCardIconColor,
);
