import 'package:flutter/material.dart';
import 'package:flutteronline/pages/HomeStack.dart';
import 'package:flutteronline/pages/LoginPage.dart';
import 'package:flutteronline/pages/ProductStack.dart';
import 'package:flutteronline/pages/RegisterPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.purple,
          accentColor: Colors.purpleAccent,
          canvasColor: Colors.purple[50],
          textTheme: TextTheme(
              headline4: TextStyle(color: Colors.green, fontSize: 50))),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
         '/': (context) => Login(),
        '/home': (context) => HomeStack(),
        '/register': (context) => RegisterPage(),
        '/productstack': (context) => ProductStack(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
