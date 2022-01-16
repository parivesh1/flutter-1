import 'package:doctor/screens/homeScreen/components/body.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WaitingList();
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
