import 'package:flutter/material.dart';

import './product_control.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  _addProduct(Map<String, String> element) {
    setState(() {
      _products.add(element);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Expanded(child: Products(_products)),
      ],
    );
  }
}
