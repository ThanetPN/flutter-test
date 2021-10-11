import 'package:flutter/material.dart';
import 'package:flutteronline/widgets/logo.dart';
import 'package:flutteronline/widgets/manu.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var fromAbout; //dynamic

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          centerTitle: true,
          title: const Logo(),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.cover)),
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'homestack/company');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.business, size: 70, color: Colors.purple),
                        Text('บริษัท', style: TextStyle(fontSize: 20))
                      ],
                    ),
                    color: Colors.white70,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed('/camerastack');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.camera_alt, size: 70, color: Colors.purple),
                        Text('กล้อง', style: TextStyle(fontSize: 20))
                      ],
                    ),
                    color: Colors.white70,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed('/map');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.map, size: 70, color: Colors.purple),
                        Text('แผนที่', style: TextStyle(fontSize: 20))
                      ],
                    ),
                    color: Colors.white70,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    fromAbout = await Navigator.pushNamed(
                        context, 'homestack/about', arguments: {
                      'email': 'Thanetpnn@gmail.com',
                      'phone': '0979355927'
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.person, size: 70, color: Colors.purple),
                        Text('เกี่ยวกับเรา ${fromAbout ?? ''}',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20))
                      ],
                    ),
                    color: Colors.white70,
                  ),
                )
              ],
            )));
  }
}
