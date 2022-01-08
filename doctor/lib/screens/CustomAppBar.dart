import 'package:doctor/screens/PatientForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  TabController tabController;
  BuildContext ctx;
  CustomAppBar(this.tabController, this.ctx);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 50);
}

class _CustomAppBarState extends State<CustomAppBar> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: widget.tabController,
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
                      context: widget.ctx,
                      builder: (BuildContext ctx) {
                        return PatientForm(ctx);
                        // return Column(
                        //   mainAxisSize: MainAxisSize.min,
                        //   children: [
                        //     TextFormField(
                        //       autofocus: true,
                        //       decoration: InputDecoration(labelText: 'Age'),
                        //       validator: (value) {
                        //         if (value.isEmpty) {
                        //           return 'Age is required';
                        //         }
                        //         int age = int.tryParse(value);
                        //         if (age < 0 || age > 120) {
                        //           return 'Enter a valid Age';
                        //         }
                        //         return null;
                        //       },

                        //     ),
                        //     Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))
                        //   ],
                        // );
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
                TimePickerSpinner(
                  is24HourMode: true,
                  onTimeChange: (time) {
                    setState(() {
                      _dateTime = time;
                    });
                  },
                );
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
