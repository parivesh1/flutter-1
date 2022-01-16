import 'package:doctor/screens/profile/components/profileCard.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            "Welcome Dr. Malik",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        card("Name:", "Dr. Malik", Icons.person_outlined),
        card("Phone Number:", "9340322323", Icons.phone),
        card("Clinic Name:", "Bansal Hospital", Icons.medical_services_rounded),
        card("Specialization", "ENT Specialist", Icons.medication_rounded),
        card("Degree:", "MBBS, MD, BMS", Icons.menu_book_rounded),
        card("Address:", "169 Bhagirath BITS Pilani",
            Icons.home_repair_service_rounded),
        card("Email", "drmalik@gmail.com", Icons.email_rounded)
      ],
    ));
  }
}
