import 'package:doctor/Providers/patientListProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget BookingListCard(PatientModel p) {
  return Consumer<PatientListProvider>(
    builder: (context, value, child) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${p.name}",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "${p.gender} ,${p.age}",
                        style: TextStyle(
                            fontSize: 12, color: Colors.black.withOpacity(0.6)),
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
                color: Colors.black.withOpacity(0.4),
                thickness: 0.4,
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Time left : ${p.minutesLeft} mins"),
                  TextButton(
                      onPressed: () {
                        value.reached(p.name);
                      },
                      child: Text("Reached"),
                      style: TextButton.styleFrom(
                        minimumSize: Size(0, 0),
                        padding: EdgeInsets.all(15),
                        side: BorderSide(width: 0.3, color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
