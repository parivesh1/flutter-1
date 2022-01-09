import 'package:doctor/CurrentPatient.dart';
import 'package:doctor/Providers/patientListProvider.dart';
import 'package:doctor/screens/CustomAppBar.dart';
import 'package:doctor/screens/bookingListView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'ReachedListView.dart';

class WaitingList extends StatefulWidget {
  WaitingList({Key key}) : super(key: key);

  @override
  State<WaitingList> createState() => _WaitingListState();
}

class _WaitingListState extends State<WaitingList>
    with SingleTickerProviderStateMixin {
    final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PatientListProvider>(
      create: (context) => PatientListProvider(),
      child: SideMenu(
        key: _sideMenuKey,
        menu: Container(child: Text("Drawer"),),
        type: SideMenuType.shrinkNSlide,
        child: Scaffold(
          appBar: CustomAppBar(_tabController, context,_sideMenuKey),
          body: Column(
            children: [
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  Consumer<PatientListProvider>(
                    builder: (context, patientListProvider, child) {
                      return ListView.builder(
                        itemCount: patientListProvider.reachedList.length,
                        itemBuilder: (context, index) {
                        if (index == 0)
                          return CurrentPatient(patientListProvider.reachedList[index]);
                        else
                          return ReachedListCard(patientListProvider.reachedList[index]);
                      });
                    },
                  ),
                  Consumer<PatientListProvider>(
                    builder: (context, patientListProvider, child) {
                      return ListView.builder(
                        itemCount: patientListProvider.bookingList.length,
                        itemBuilder: (context, index) {
                          return BookingListCard(patientListProvider.bookingList[index]);
                      });
                    },
                  ),
                ]),
              )
            ],
          ),
        ),
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
