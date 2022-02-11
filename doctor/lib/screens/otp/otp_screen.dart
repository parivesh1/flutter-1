import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              title: Text(
                "OTP Verification",
                style: GoogleFonts.publicSans(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 24),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              shape: Border(bottom: BorderSide(color: Colors.black, width: 3)),
            ),
            body: Body(),
          )
        : CupertinoPageScaffold(
            child: Body(),
            navigationBar: CupertinoNavigationBar(
              middle: Text(
                "OTP Verification",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.blue,
            ),
          );
  }
}
