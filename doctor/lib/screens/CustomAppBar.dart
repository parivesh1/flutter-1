import 'package:flutter/material.dart';

import 'LoginScreen.dart';
import 'PatientForm.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  TabController tabController;
  CustomAppBar(this.tabController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              child: Text(
                "Reached",
                style: TextStyle(color: Colors.teal),
              ),
            ),
            Tab(child: Text("Booking", style: TextStyle(color: Colors.teal)))
          ],
        ),
        actions: [
          Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return PatientForm();
                      },
                    );
                  },
                  child: Container(
                    child: Text(
                      "Add Patient",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      minimumSize: Size(0, 0),
                      padding: EdgeInsets.all(5),
                      backgroundColor: Colors.black,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius:
                              BorderRadius.all(Radius.circular(25)))),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                _showTimePicker();
              },
              child: Text(
                "Add Delay",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  minimumSize: Size(0, 0),
                  padding: EdgeInsets.all(5),
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(25)))),
            ),
          ),
        ],
        title: Text(
          "Doctor App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: LoginScreen(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 50);
}

class _showTimePicker {}
