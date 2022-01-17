import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Platform.isAndroid
        ? Scaffold(
            appBar: AppBar(
              title: Text("OTP Verification"),
            ),
            body: Body(),
          )
        : CupertinoPageScaffold(
            child: Body(),
            navigationBar: CupertinoNavigationBar(
              middle: Text("OTP Verification"),
            ),
          );
  }
}
