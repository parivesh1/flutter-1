import 'package:doctor/Providers/patientListProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CurrentPatient(PatientModel p) {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
    elevation: 30,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    color: Color.fromARGB(255, 53, 125, 192),
    shadowColor: Colors.grey[600],
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      "Current Patient:",
                      style: GoogleFonts.nunito(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    "${p.name}",
                    style:
                        GoogleFonts.mulish(fontSize: 12, color: Colors.white),
                  ),
                  Text(
                    "${p.gender}, ${p.age}",
                    style:
                        GoogleFonts.mulish(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
              CircleAvatar(
                child: CircleAvatar(
                  child: Text(
                    "${p.token}",
                    style: TextStyle(color: Colors.black),
                  ),
                  radius: 19,
                  backgroundColor: Colors.white,
                ),
                radius: 20,
                backgroundColor: Colors.black,
              )
            ],
          ),
          Divider(
            color: Colors.white,
            thickness: 0.4,
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Time left : ${p.minutesLeft} mins",
                style: GoogleFonts.mulish(fontSize: 12, color: Colors.white),
              )
            ],
          )
        ],
      ),
    ),
  );
}
