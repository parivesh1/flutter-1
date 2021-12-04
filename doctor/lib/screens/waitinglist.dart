import 'package:doctor/CurrentPatient.dart';
import 'package:doctor/screens/CustomAppBar.dart';
import 'package:doctor/screens/bookingListView.dart';
import 'package:flutter/material.dart';

import 'ReachedListView.dart';

class WaitingList extends StatefulWidget {
  WaitingList({Key key}) : super(key: key);

  @override
  State<WaitingList> createState() => _WaitingListState();
}

class _WaitingListState extends State<WaitingList>
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
      appBar: CustomAppBar(_tabController),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              Column(
                children: [
                  CurrentPatient(),
                  ReachedListCard(),
                  ReachedListCard()
                ],
              ),
              Column(
                children: [BookingListCard(), BookingListCard()],
              )
            ]),
          )
        ],
      ),
    );
  }
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
