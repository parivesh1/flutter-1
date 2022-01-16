import 'package:flutter/material.dart';

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
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(height: 16.0),
                Text(
                  "Hello",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Doctor",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, 'homeScreen'),
            leading: const Icon(Icons.home, size: 20.0, color: Colors.black),
            title: const Text("Home"),
            tileColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () => {
              Navigator.pushNamed(context, 'docProfile'),
            },
            leading: const Icon(Icons.verified_user,
                size: 20.0, color: Colors.black),
            title: const Text("Profile"),
            tileColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () => {
              Navigator.pushNamed(
                context,
                'bookingsHistory',
              )
            },
            leading: const Icon(Icons.history, size: 20.0, color: Colors.black),
            title: const Text("Bookings  History"),
            tileColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(Icons.settings, size: 20.0, color: Colors.black),
            title: const Text("Settings"),
            tileColor: Colors.white,
            dense: true,
          )
        ],
      ),
    );
  }
}
