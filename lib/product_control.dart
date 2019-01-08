import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {

  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Add People'),
      onPressed: () {
        addProduct({
          'title': '美国队长',
          'image': 'assets/images/captain.jpeg'
        });
      }
    );
  }

}