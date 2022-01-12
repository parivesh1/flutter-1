import 'package:doctor/screens/bookings/bookingCardTemplate.dart';
import 'package:doctor/screens/bookings/bookingsHistoryScreens.dart';
import 'package:flutter/material.dart';

class BookingsHistoryScreen extends StatefulWidget {
  @override
  State<BookingsHistoryScreen> createState() => _BookingsHistoryScreenState();
}

class _BookingsHistoryScreenState extends State<BookingsHistoryScreen>
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
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.chevron_left_outlined),
          color: Colors.black,
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.blue[700],
          unselectedLabelColor: Colors.grey[700],
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Colors.grey[120]),
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontSize: 18),
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
                  SizedBox(
                    height: 8,
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
