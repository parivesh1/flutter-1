import 'package:doctor/screens/profile/components/body.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.chevron_left_outlined),
            color: Colors.black,
          ),
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
              SizedBox(
                width: 6,
              ),
              Text(
                "Profile",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        body: Body());
  }
}
