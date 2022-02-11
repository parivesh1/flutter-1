import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideDrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(height: 16.0),
                Text(
                  "Hello",
                  style: GoogleFonts.syneTactile(
                      color: Colors.white, fontSize: 16),
                ),
                Text(
                  "Doctor",
                  style: GoogleFonts.syneTactile(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, 'homeScreen'),
            leading: const Icon(Icons.home, size: 20.0, color: Colors.white),
            title: Text(
              "Home",
              style: GoogleFonts.syneTactile(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            dense: true,
          ),
          ListTile(
            onTap: () => {
              Navigator.pushNamed(context, 'docProfile'),
            },
            leading: const Icon(Icons.verified_user,
                size: 20.0, color: Colors.white),
            title: Text(
              "Profile",
              style: GoogleFonts.syneTactile(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            dense: true,
          ),
          ListTile(
            onTap: () => {
              Navigator.pushNamed(
                context,
                'bookingsHistory',
              )
            },
            leading: const Icon(Icons.history, size: 20.0, color: Colors.white),
            title: Text(
              "Bookings  History",
              style: GoogleFonts.syneTactile(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(Icons.settings, size: 20.0, color: Colors.white),
            title: Text(
              "Settings",
              style: GoogleFonts.syneTactile(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            dense: true,
          )
        ],
      ),
    );
  }
}
