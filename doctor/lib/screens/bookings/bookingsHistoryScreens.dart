import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';

class BookingsHistoryScreen extends StatefulWidget {
  @override
  State<BookingsHistoryScreen> createState() => _BookingsHistoryScreenState();
}

class _BookingsHistoryScreenState extends State<BookingsHistoryScreen> {
  int i = 2;
  TimeOfDay time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Bookings History",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.chevron_left_outlined),
          color: Colors.black,
        ),
      ),
      body: Column(
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
            child: Column(
              children: [
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
                      padding:
                          const EdgeInsets.only(left: 1, top: 8, bottom: 10),
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = 1;
                            });
                          },
                          child: i != 1
                              ? Text(
                                  "6",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                )
                              : CircleAvatar(
                                  child: Text(
                                    "6",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 158, 129, 190)),
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
                        GestureDetector(
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
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 158, 129, 190)),
                                  ),
                                  radius: 13,
                                  backgroundColor: Colors.white,
                                )
                              : Text(
                                  "7",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                        )
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
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                i = 3;
                              });
                            },
                            child: i != 3
                                ? Text(
                                    "8",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )
                                : CircleAvatar(
                                    child: Text(
                                      "8",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                              255, 158, 129, 190)),
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
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              i = 4;
                            });
                          },
                          child: i != 4
                              ? Text(
                                  "9",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                )
                              : CircleAvatar(
                                  child: Text(
                                    "9",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 158, 129, 190)),
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
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                i = 5;
                              });
                            },
                            child: i != 5
                                ? Text(
                                    "10",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )
                                : CircleAvatar(
                                    child: Text(
                                      "10",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                              255, 158, 129, 190)),
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = 6;
                            });
                          },
                          child: i != 6
                              ? Text(
                                  "11",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                )
                              : CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    "11",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 158, 129, 190)),
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = 7;
                            });
                          },
                          child: i != 7
                              ? Text(
                                  "12",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                )
                              : CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 158, 129, 190)),
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
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.calendar_today_rounded,
                        color: Colors.white,
                        size: 15,
                      ),
                    ],
                  ),
                )
              ],
            ),
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
      ),
    );
  }
}

class HistoryCards extends StatelessWidget {
  final int i;
  final String name;
  final TimeOfDay timeOfDay;
  final int phoneNumber;
  final int age;
  const HistoryCards(
    this.name,
    this.timeOfDay,
    this.i,
    this.age,
    this.phoneNumber, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(context, name, age, phoneNumber);
      },
      child: Card(
        elevation: 12,
        shadowColor: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    timeOfDay.format(context),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CircleAvatar(
                child: CircleAvatar(
                  child: Text(
                    i.toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                  radius: 16,
                  backgroundColor: Colors.white,
                ),
                radius: 16.5,
                backgroundColor: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> showBottomSheet(
      BuildContext context, String name, int age, int phoneNumber) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 158, 129, 190),
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(35),
                topRight: const Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text("Patient Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w700)),
                    trailing: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(9),
                        child: Text(
                          "Contact",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 158, 129, 190),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child:
                        Divider(height: 1, thickness: 1, color: Colors.white),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.014,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Name:",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14)),
                            Text(name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Age:",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14)),
                            Text(age.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Ph. Number:",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14)),
                            Text(phoneNumber.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
