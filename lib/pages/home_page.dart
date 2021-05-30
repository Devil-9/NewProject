import 'package:flutter/material.dart';
import 'package:flutter1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;

  final String name = "Devil";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY App"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello World $days by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
