import 'package:doctor/screens/doctor%20details/components/details_form.dart';
import 'package:doctor/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top + MediaQuery.of(context).size.height * 0.03,
          ),
          Material(child: Text(
            "Details",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DetailsForm(),
          ),
        ],
      ),
    );
  }
}
