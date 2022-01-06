import 'package:doctor/screens/bookings/bookingCardTemplate.dart';
import 'package:doctor/screens/bookings/bookingsHistoryScreens.dart';
import 'package:flutter/material.dart';

class BookingsScreen extends StatefulWidget {
  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.blue[700],
          unselectedLabelColor: Colors.grey[700],
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Colors.grey[120]),
          tabs: [
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text("Upcoming"),
              ),
            ),
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text("Past"),
              ),
            ),
          ],
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
            Text(
              "Quiky",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: GestureDetector(
                      child: bookingCardTemplate(context),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: GestureDetector(
                      child: bookingCardTemplate(context),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: GestureDetector(
                      child: bookingCardTemplate(context),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              BookingsHistoryScreen()
            ]),
          )
        ],
      ),
    );
  }
}
