import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(CheckYourBMR());

class CheckYourBMR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
      home: InputPage(),
//      initialRoute: '/',
//      routes: {
//        '/': (context) => InputPage(),
//        ResultsPage.routeName: (context) => ResultsPage(),
//      },
    );
  }
}
