import 'package:doctor/screens/mainScaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/patientListProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.blue[600],
              textTheme: ButtonTextTheme.primary,
            )),
        home: ChangeNotifierProvider<PatientListProvider>(
            create: (context) => PatientListProvider(), child: MainScaffold()));
  }
}
