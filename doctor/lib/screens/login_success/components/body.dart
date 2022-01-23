import 'package:doctor/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.98,
      width: MediaQuery.of(context).size.width * 0.98,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.4, //40%
            width: SizeConfig.screenWidth,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Material(child: Text(
            "Login Success!",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              width: SizeConfig.screenWidth * 0.7,
              child: DefaultButton(
                text: "Back to home",
                press: () {
                  Navigator.pushNamed(context, 'homeScreen');
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
