import 'package:flutter/material.dart';
import 'package:flutteronline/pages/AboutPage.dart';
import 'package:flutteronline/pages/CompanyPage.dart';
import 'package:flutteronline/pages/ContactPage.dart';
import 'package:flutteronline/pages/HomePage.dart';

class HomeStack extends StatefulWidget {
  HomeStack({Key? key}) : super(key: key);

  @override
  _HomeStackState createState() => _HomeStackState();
}

class _HomeStackState extends State<HomeStack> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'homestack/home',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'homestack/home':
            builder = (BuildContext context) => HomePage();
            break;

          case 'homestack/about':
            builder = (BuildContext context) => AboutPage();
            break;

          case 'homestack/contact':
            builder = (BuildContext context) => ContactPage();
            break;

          case 'homestack/company':
            builder = (BuildContext context) => CompanyPage();
            break;

          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<void>(builder: builder, settings: settings);
      },
    );
  }
}
