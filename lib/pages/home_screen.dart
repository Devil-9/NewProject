import 'package:flutter/material.dart';
import 'package:flutter1/utils/routs.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        titleSpacing: 100,
        
        title: Text("MY App"),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
      persistentFooterButtons: [
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, MyRoutes.loginRoute);
        }, child: Text("login")
        )
      ],
      
    );
  }
}