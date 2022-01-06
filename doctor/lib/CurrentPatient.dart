import 'package:flutter/material.dart';

Widget CurrentPatient() {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
    elevation: 30,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    color: Colors.green[400],
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
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Patient Name",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    "Male ,21",
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.6)),
                  ),
                ],
              ),
              CircleAvatar(
                child: CircleAvatar(
                  child: Text(
                    "17",
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
            color: Colors.black.withOpacity(0.4),
            thickness: 0.4,
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Time left : 17 mins")],
          )
        ],
      ),
    ),
  );
}
