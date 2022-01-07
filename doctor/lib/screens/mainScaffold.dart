import 'package:doctor/screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({Key key}) : super(key: key);

  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen(),
      appBar: AppBar(
        title: Text("Doctor App"),
      ),
    );
  }
}
