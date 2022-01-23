import 'dart:io';

import 'package:doctor/screens/homeScreen/components/PatientForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  TabController tabController;
  BuildContext ctx;
  final GlobalKey<SideMenuState> _sideMenuKey;

  CustomAppBar(this.tabController, this.ctx, this._sideMenuKey);

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
                style: TextStyle(color: Colors.teal, fontSize: 18),
              ),
            ),
            Tab(
                child: Text("Booking",
                    style: TextStyle(color: Colors.teal, fontSize: 18)))
          ],
        ),
        leading: IconButton(
            onPressed: () {
              if (_sideMenuKey.currentState.isOpened)
                _sideMenuKey.currentState.closeSideMenu(); // close side menu
              else
                _sideMenuKey.currentState.openSideMenu();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        actions: [
          Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: ctx,
                      builder: (BuildContext context) {
                        return PatientForm();
                      },
                    );
                  },
                  child: Container(
                    child: Text(
                      "Add Patient",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      minimumSize: Size(0, 0),
                      padding: EdgeInsets.all(5),
                      backgroundColor: Colors.black,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(25)))),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                Platform.isAndroid
                    ? showTimePicker(
                        context: ctx,
                        initialTime: TimeOfDay.now(),
                        builder: (context, childWidget) {
                          return MediaQuery(
                              data: MediaQuery.of(context).copyWith(
                                  // Using 24-Hour format
                                  alwaysUse24HourFormat: true),
                              // If you want 12-Hour format, just change alwaysUse24HourFormat to false or remove all the builder argument
                              child: childWidget);
                        },
                      )
                    : showCupertinoModalPopup(
                        context: context,
                        builder: (_) => Container(
                              height: 500,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 400,
                                    child: CupertinoDatePicker(
                                        mode: CupertinoDatePickerMode.time,
                                        use24hFormat: true,
                                        initialDateTime: DateTime.now(),
                                        onDateTimeChanged: (val) {}),
                                  ),

                                  // Close the modal
                                  CupertinoButton(
                                    child: const Text('OK'),
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                  )
                                ],
                              ),
                            ));
              },
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  "Delay",
                  style: TextStyle(color: Colors.white),
                ),
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 50);
}
