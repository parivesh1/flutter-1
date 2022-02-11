import 'package:doctor/screens/homeScreen/components/CurrentPatient.dart';
import 'package:doctor/Providers/patientListProvider.dart';
import 'package:doctor/components/CustomAppBar.dart';
import 'package:doctor/screens/homeScreen/components/bookingListCard.dart';
import 'package:doctor/screens/homeScreen/components/ReachedListCard.dart';
import 'package:doctor/screens/side_drawer/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

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
        background: Colors.blue[800],
        key: _sideMenuKey,
        menu: SideDrawerMenu(),
        type: SideMenuType.shrinkNSlide,
        maxMenuWidth: 275,
        radius: BorderRadius.circular(60),
        child: Scaffold(
          appBar: CustomAppBar(_tabController, context, _sideMenuKey),
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
                              return CurrentPatient(
                                  patientListProvider.reachedList[index]);
                            else
                              return ReachedListCard(
                                  patientListProvider.reachedList[index]);
                          });
                    },
                  ),
                  Consumer<PatientListProvider>(
                    builder: (context, patientListProvider, child) {
                      return ListView.builder(
                          itemCount: patientListProvider.bookingList.length,
                          itemBuilder: (context, index) {
                            return BookingListCard(
                                patientListProvider.bookingList[index]);
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
