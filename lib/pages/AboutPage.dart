import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    //Map company = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(title: Text('ติดต่อเรา')),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Thanetpnn.com'),
            // Text('Email: ${company['email']}'),
            //Text('Phone: ${company['Phone']}'),

            RaisedButton(
              child: Text('กลับหน้า Home'),
              onPressed: () {
                Navigator.pop(context, 'About Page');
              },
            ),
            RaisedButton(
              child: Text('เกี่ยวกับเรา'),
              onPressed: () {
                Navigator.pushNamed(context, 'homestack/contact');
              },
            )
          ]),
        ));
  }
}
