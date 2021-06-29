import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Product.dart';

class ListViewBuilderPage extends StatelessWidget {
  // 假資料
  final List<Product> listItems = List<Product>.generate(500, (index) {
    return Product(name: "測試資料: $index", price: "$index");
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return ListTile(leading: Icon(Icons.event),
              title: Text("${listItems[index].name}"),
              subtitle: Text("${listItems[index].price}"),);
          }),
    );
  }
}
