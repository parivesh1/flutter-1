import 'package:doctor/screens/bookings/components/showBottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryCards extends StatelessWidget {
  final int i;
  final String name;
  final TimeOfDay timeOfDay;
  final int phoneNumber;
  final int age;
  const HistoryCards(
    this.name,
    this.timeOfDay,
    this.i,
    this.age,
    this.phoneNumber, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bottomSheet(context, name, age, phoneNumber);
      },
      child: Card(
        elevation: 12,
        shadowColor: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    name,
                    style: GoogleFonts.nunito(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    timeOfDay.format(context),
                    style: GoogleFonts.publicSans(
                        fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CircleAvatar(
                child: CircleAvatar(
                  child: Text(
                    i.toString(),
                    style: GoogleFonts.publicSans(color: Colors.black),
                  ),
                  radius: 16,
                  backgroundColor: Colors.white,
                ),
                radius: 16.5,
                backgroundColor: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
