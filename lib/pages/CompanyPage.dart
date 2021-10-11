import 'package:flutter/material.dart';

class CompanyPage extends StatefulWidget {
  CompanyPage({Key? key}) : super(key: key);

  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ข้อมูลบริษัท')), body: _buildbody());
  }

  SingleChildScrollView _buildbody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildHearder(),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Thanetpnn',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  Divider(),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type',
                    textAlign: TextAlign.justify,
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(children: <Widget>[
                        Icon(Icons.phone_android, color: Colors.purple)
                      ]),
                      SizedBox(width: 16),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(children: <Widget>[Text('Thanetpnn')]),
                            Row(children: <Widget>[Text('0979355927')])
                          ]),
                    ],
                  ),
                  Divider(),
                  Wrap(
                      spacing: 8,
                      children: List.generate(
                          7,
                          (int index) => Chip(
                                label: Text('Text'),
                                avatar: Icon(Icons.star),
                                backgroundColor: Colors.purple,
                              ))),
                  Divider(),
                  buildFooter()
                ]),
          ))
        ],
      ),
    );
  }

  Row buildFooter() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/1.jpg'),
            radius: 40,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/1.jpg'),
            radius: 40,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/1.jpg'),
            radius: 40,
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Icon(Icons.access_alarm),
                Icon(Icons.accessibility),
                Icon(Icons.account_balance)
              ],
            ),
          )
        ]);
  }

  Image buildHearder() {
    return Image(
      image: AssetImage('assets/images/company.jpg'),
      fit: BoxFit.cover,
    );
  }
}
