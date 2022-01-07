import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';
import '../../size_config.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  PhoneNumber phoneNumber;

  OtpScreen(this.phoneNumber);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(phoneNumber),
    );
  }
}
