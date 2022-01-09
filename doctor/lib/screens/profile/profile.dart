import 'package:doctor/screens/profile/profileCard.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.chevron_left_outlined),
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.grey,
              ),
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              "Profile",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
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
          card("Clinic Name:", "Bansal Hospital",
              Icons.medical_services_rounded),
          card("Specialization", "ENT Specialist", Icons.medication_rounded),
          card("Degree:", "MBBS, MD, BMS", Icons.menu_book_rounded),
          card("Address:", "169 Bhagirath BITS Pilani",
              Icons.home_repair_service_rounded),
          card("Email", "drmalik@gmail.com", Icons.email_rounded)
        ],
      )),
    );
  }
}
