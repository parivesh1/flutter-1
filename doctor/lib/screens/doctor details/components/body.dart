import 'package:doctor/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight*0.05,
        ),
        Text("Deatils",style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)
      ],
    );
  }
}
