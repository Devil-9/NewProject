import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter1/models/catalog.dart';
import 'package:flutter1/widgets/drawer.dart';
import 'package:flutter1/widgets/item_widget.dart';
import 'dart:convert';

class ProductPage1 extends StatefulWidget {
  @override
  _ProductPage1State createState() => _ProductPage1State();
}

class _ProductPage1State extends State<ProductPage1> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJason =
        await rootBundle.loadString("assets/files/product.json");
    final decodedData = jsonDecode(catalogJason);

    var productData = decodedData["product"];
    print(productData);
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
