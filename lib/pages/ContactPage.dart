import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('เกี่ยวกับเรา')),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Thanetpnn.com'),
            ElevatedButton(
              child: Text('กลับหน้า Home'),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, 'homestack/home',
                    (Route<dynamic> router) => false);
              },
            )
          ]),
        ));
  }
}
