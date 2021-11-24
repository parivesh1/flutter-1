import 'package:doctor/screens/CustomAppBar.dart';
import 'package:doctor/screens/bookingListView.dart';
import 'package:flutter/material.dart';

class WaitingList extends StatefulWidget {
  WaitingList({Key key}) : super(key: key);

  @override
  State<WaitingList> createState() => _WaitingListState();
}

class _WaitingListState extends State<WaitingList> with SingleTickerProviderStateMixin {
  
  TabController _tabController;
    @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(_tabController),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
             Column(
               children: [ReachedListCard(),ReachedListCard()],
             ),
              Column(
                children: [
                  BookingListCard(),
                  BookingListCard()
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}

Card ReachedListCard() {
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
                    "Samir Kumar",
                    style: TextStyle(fontSize: 15),
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
            children: [
              Text("Time left : 17 mins"),
              
              TextButton(
                  onPressed: () {},
                  child: Text("Send In"),
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
}

        // Container(
        //   alignment: Alignment.center,
        //   child: Row(
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       ElevatedButton(
                
        //         onPressed: () {},
        //         child: Text(
        //           "Reached",
        //           style: TextStyle(color: Colors.black),
        //         ),
        //         style: ElevatedButton.styleFrom(
                  
        //           elevation: 10,
        //             primary: Colors.white,
        //             shape: RoundedRectangleBorder(
                      
        //                 side: BorderSide(width: 0.3),
        //                 borderRadius: BorderRadius.only(
        //                     topLeft: Radius.circular(15),
        //                     bottomLeft: Radius.circular(15)))),
        //       ),
        //       ElevatedButton(
        //         onPressed: () {},
        //         child: Text(
        //           "Booking",
        //           style: TextStyle(color: Colors.black.withOpacity(0.4)),
        //         ),
        //         style: ElevatedButton.styleFrom(
        //             primary: Colors.white,
        //             shape: RoundedRectangleBorder(
        //                 side: BorderSide(width: 0.3),
        //                 borderRadius: BorderRadius.only(
        //                     topRight: Radius.circular(15),
        //                     bottomRight: Radius.circular(15)))),
        //       )
        //     ],
        //   ),
        // ),