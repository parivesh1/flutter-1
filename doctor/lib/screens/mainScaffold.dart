import 'package:doctor/screens/LoginScreen.dart';
import 'package:doctor/screens/otpVerification.dart';

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

  void _showTimePicker(BuildContext context) async {
    print("Picking time");
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: 0, minute: 15),
      initialEntryMode: TimePickerEntryMode.input,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child,
        );
      },
    );
  }
}
