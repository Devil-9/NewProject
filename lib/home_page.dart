import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
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
      drawer: Drawer(),
    );
  }
}
