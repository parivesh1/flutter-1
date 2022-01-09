import 'package:doctor/screens/PatientForm.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  TabController tabController;
  BuildContext ctx;
  CustomAppBar(this.tabController, this.ctx);

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
                      context: ctx,
                      builder: (BuildContext context) {
                        return PatientForm();
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
                showTimePicker(context: ctx, initialTime: TimeOfDay.now());
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


