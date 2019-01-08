import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget{

  final List<Map<String, String>> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    Map<String, String> product = products[index];
    print(product);
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(product['image']),
          Text(product['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 18,
                height: 18,
                child: IconButton(
                  padding: EdgeInsets.all(0.0),
                  icon: Icon(Icons.dehaze),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ProductPage(product['title'], product['image'])));
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return products.isNotEmpty ? ListView.builder(
      itemCount: products.length,
      itemBuilder: _buildProductItem,
    ) : Center(child: Text('No products found, please add some'),);
  }
}