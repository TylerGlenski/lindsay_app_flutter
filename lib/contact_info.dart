import 'package:flutter/material.dart';

// widget to modify and change contact into displayed in the card_view.dart

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Contact Info: ',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'Email: lindsaysbingythings@gmail.com ',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
