import 'package:flutter/material.dart';
import 'card_view.dart';
import 'constants.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kBackgroundColorApp,
        body: SafeArea(child: CardView()),
      ),
    );
  }
}
