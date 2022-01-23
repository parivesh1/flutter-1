import 'dart:io';

import 'package:doctor/screens/bookings/components/historyCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int i = 2;
  TimeOfDay time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 158, 129, 190),
              borderRadius: BorderRadius.only(
                bottomLeft: const Radius.circular(40),
                bottomRight: const Radius.circular(40),
              ),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 92, 204, 255),
                  Color.fromARGB(255, 158, 129, 190)
                ],
              )),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Appointments",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 1, top: 8, bottom: 10),
                  child: Text(
                    "June",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "S",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          i = 1;
                        });
                      },
                      child: i != 1
                          ? CircleAvatar(
                              child: Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              radius: 13,
                              backgroundColor: Colors.transparent,
                            )
                          : CircleAvatar(
                              child: Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 158, 129, 190)),
                              ),
                              radius: 13,
                              backgroundColor: Colors.white,
                            ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "M",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            i = 2;
                          });
                        },
                        child: i == 2
                            ? CircleAvatar(
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color.fromARGB(255, 158, 129, 190)),
                                ),
                                radius: 13,
                                backgroundColor: Colors.white,
                              )
                            : CircleAvatar(
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                radius: 13,
                                backgroundColor: Colors.transparent,
                              ))
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "T",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            i = 3;
                          });
                        },
                        child: i != 3
                            ? CircleAvatar(
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                radius: 13,
                                backgroundColor: Colors.transparent,
                              )
                            : CircleAvatar(
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color.fromARGB(255, 158, 129, 190)),
                                ),
                                backgroundColor: Colors.white,
                                radius: 13,
                              ))
                  ],
                ),
                Column(children: [
                  Text(
                    "W",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          i = 4;
                        });
                      },
                      child: i != 4
                          ? CircleAvatar(
                              child: Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              radius: 13,
                              backgroundColor: Colors.transparent,
                            )
                          : CircleAvatar(
                              child: Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 158, 129, 190)),
                              ),
                              backgroundColor: Colors.white,
                              radius: 13,
                            ))
                ]),
                Column(
                  children: [
                    Text(
                      "T",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            i = 5;
                          });
                        },
                        child: i != 5
                            ? CircleAvatar(
                                child: Text(
                                  "10",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                radius: 13,
                                backgroundColor: Colors.transparent,
                              )
                            : CircleAvatar(
                                child: Text(
                                  "10",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color.fromARGB(255, 158, 129, 190)),
                                ),
                                backgroundColor: Colors.white,
                                radius: 13,
                              ))
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "F",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          i = 6;
                        });
                      },
                      child: i != 6
                          ? CircleAvatar(
                              child: Text(
                                "11",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              radius: 13,
                              backgroundColor: Colors.transparent,
                            )
                          : CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.white,
                              child: Text(
                                "11",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 158, 129, 190)),
                              )),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "S",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          i = 7;
                        });
                      },
                      child: i != 7
                          ? CircleAvatar(
                              child: Text(
                                "12",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              radius: 13,
                              backgroundColor: Colors.transparent,
                            )
                          : CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.white,
                              child: Text(
                                "12",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 158, 129, 190)),
                              )),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 19, left: 13.5, right: 13.5, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(""),
                  Text(
                    "Monday  June 7, 2021",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.calendar_today_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: () {
                      Platform.isAndroid
                          ? showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2019),
                                  lastDate: DateTime.now())
                              .then((pickedDate) {})
                          : CupertinoDatePicker(
                              onDateTimeChanged: (value) {},
                              initialDateTime: DateTime.now(),
                            );
                    },
                  ),
                ],
              ),
            ),
          ]),
        ),
        if (i == 1)
          (Column(children: [
            HistoryCards("Samir Kumar (i = 1)", time, 1, 21, 9292929292),
            HistoryCards("Udhav Bajaj", time, 2, 21, 9292929292),
            HistoryCards("Parivesh Bajpai", time, 3, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 4, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 5, 21, 9292929292)
          ]))
        else if (i == 2)
          (Column(children: [
            HistoryCards("Samir Kumar (i = 2)", time, 1, 21, 9292929292),
            HistoryCards("Udhav Bajaj", time, 2, 21, 9292929292),
            HistoryCards("Parivesh Bajpai", time, 3, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 4, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 5, 21, 9292929292)
          ]))
        else if (i == 3)
          (Column(children: [
            HistoryCards("Samir Kumar (i = 3)", time, 1, 21, 9292929292),
            HistoryCards("Udhav Bajaj", time, 2, 21, 9292929292),
            HistoryCards("Parivesh Bajpai", time, 3, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 4, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 5, 21, 9292929292)
          ]))
        else if (i == 4)
          (Column(children: [
            HistoryCards("Samir Kumar (i = 4)", time, 1, 21, 9292929292),
            HistoryCards("Udhav Bajaj", time, 2, 21, 9292929292),
            HistoryCards("Parivesh Bajpai", time, 3, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 4, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 5, 21, 9292929292)
          ]))
        else if (i == 5)
          (Column(children: [
            HistoryCards("Samir Kumar (i = 5)", time, 1, 21, 9292929292),
            HistoryCards("Udhav Bajaj", time, 2, 21, 9292929292),
            HistoryCards("Parivesh Bajpai", time, 3, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 4, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 5, 21, 9292929292)
          ]))
        else if (i == 6)
          (Column(children: [
            HistoryCards("Samir Kumar (i = 6)", time, 1, 21, 9292929292),
            HistoryCards("Udhav Bajaj", time, 2, 21, 9292929292),
            HistoryCards("Parivesh Bajpai", time, 3, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 4, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 5, 21, 9292929292)
          ]))
        else if (i == 7)
          (Column(children: [
            HistoryCards("Samir Kumar (i = 7)", time, 1, 21, 9292929292),
            HistoryCards("Udhav Bajaj", time, 2, 21, 9292929292),
            HistoryCards("Parivesh Bajpai", time, 3, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 4, 21, 9292929292),
            HistoryCards("Samir Kumar", time, 5, 21, 9292929292)
          ]))
      ],
    );
  }
}
