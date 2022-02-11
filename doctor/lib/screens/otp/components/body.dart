import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../size_config.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(""),
    );
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: (MediaQuery.of(context).padding.top +
                      appBar.preferredSize.height)),
              Text(
                "OTP Verification",
                style: GoogleFonts.publicSans(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Please Enter OTP Verification",
                style: GoogleFonts.publicSans(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "We sent your code to +91 7500 56***",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none),
              ),
              buildTimer(),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                  onTap: () {
                    // OTP code resend
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Resend OTP Code",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "This code will expire in ",
          style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(
                color: Color(0xFFEB5757),
                fontSize: 14,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
        ),
      ],
    );
  }
}
