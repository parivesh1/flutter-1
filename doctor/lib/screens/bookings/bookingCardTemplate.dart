import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Card bookingCardTemplate(BuildContext context) {
  return Card(
    elevation: 10,
    shadowColor: Colors.grey,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr Malik",
                      style: GoogleFonts.publicSans(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " ENT Specialist",
                      style: GoogleFonts.roboto(
                          fontSize: 15, color: Colors.black.withOpacity(0.7)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          Icon(Icons.timelapse_sharp),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "THU, 17 JULY,",
                              style: GoogleFonts.roboto(
                                  fontSize: 15,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Icon(Icons.location_pin),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "Rajasthan Birla Institute  of technology and Science",
                              style: GoogleFonts.roboto(
                                  fontSize: 15,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: CircleAvatar(
                  child: Image.asset(
                    "assets/images/riya.png",
                    fit: BoxFit.fill,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
              )
            ],
          ),
          Divider(
            height: 2,
            color: Colors.black,
            thickness: 0.6,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          )
        ],
      ),
    ),
  );
}
