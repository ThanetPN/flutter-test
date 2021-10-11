import 'package:flutter/material.dart';
import 'package:flutteronline/widgets/manu.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(centerTitle: true, title: Text('สินค้า')),
    );
  }
}
