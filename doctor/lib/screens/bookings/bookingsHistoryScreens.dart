import 'package:doctor/screens/bookings/components/body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingsHistoryScreen extends StatefulWidget {
  @override
  State<BookingsHistoryScreen> createState() => _BookingsHistoryScreenState();
}

class _BookingsHistoryScreenState extends State<BookingsHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Bookings History",
            style: GoogleFonts.publicSans(
                fontWeight: FontWeight.w600, color: Colors.black, fontSize: 24),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          shape: Border(
              bottom: BorderSide(color: Colors.black, width: 3),
              top: BorderSide(color: Colors.black, width: 3),
              left: BorderSide(color: Colors.black, width: 3),
              right: BorderSide(color: Colors.black, width: 3)),
        ),
        body: Body());
  }
}
