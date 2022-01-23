import 'package:flutter/material.dart';
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
            children: [
              SizedBox(height: (MediaQuery.of(context).padding.top + appBar.preferredSize.height)),
              Text(
                "OTP Verification",
                style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
              ),
              Text("We sent your code to +91 7500 56***", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold, decoration: TextDecoration.none),),
              buildTimer(),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Material(
                  child: Text(
                    "Resend OTP Code",
                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                  ),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expire in ", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold, decoration: TextDecoration.none),),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: Colors.orange, fontSize: 14, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
          ),
        ),
      ],
    );
  }
}
