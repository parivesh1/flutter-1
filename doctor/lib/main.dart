import 'package:doctor/screens/bookings/bookingsHistoryScreens.dart';
import 'package:doctor/screens/doctor%20details/doctor_detail_screen.dart';
import 'package:doctor/screens/homeScreen/homeScreen.dart';
import 'package:doctor/screens/login/LoginScreen.dart';
import 'package:doctor/screens/otp/otp_screen.dart';
import 'package:doctor/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/patientListProvider.dart';

void main() => runApp(MyApp());

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
              textTheme: ButtonTextTheme.primary,
            )),
        routes: {
          'logIn': (context) => LoginScreen(),
          'otp': (context) => OtpScreen(),
          'docDetails': (context) => DoctorDetailScreen(),
          'homeScreen': (context) => homeScreen(),
          'docProfile': (context) => profileScreen(),
          'bookingsHistory': (context) => BookingsHistoryScreen(),
        },
        home: ChangeNotifierProvider<PatientListProvider>(
            create: (context) => PatientListProvider(), child: LoginScreen()));
  }
}
