import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard(
      {this.text,
      this.fontSize,
      this.fontFamily,
      this.color,
      this.textColor,
      this.url});

  final String text;
  final double fontSize;
  final String fontFamily;
  final Color color;
  final Color textColor;
  final String url;

  _launchURL() async {
    if (await canLaunch(this.url)) {
      await launch(this.url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL();
      },
      child: Card(
        child: ListTile(
          leading: kCardIconCart,
          title: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontFamily: fontFamily,
              fontSize: fontSize,
            ),
          ),
        ),
        color: color,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      ),
    );
  }
}
