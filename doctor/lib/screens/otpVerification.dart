import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key key}) : super(key: key);

  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  String _lastPin = "1234";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          child: Icon(
            Icons.keyboard_backspace_sharp,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Doctor App"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text("OTP Verification"),
              ),
            ),
            Row(
              children: [
                Text("This code will expire in "),
                TweenAnimationBuilder(
                  tween: Tween(begin: 60, end: 0),
                  duration: Duration(seconds: 60),
                  builder: (context, value, child) {
                    return Text("00:${value.toInt()}",style: TextStyle(color: Colors.red),);
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: PinEntryTextField(
                  lastPin: _lastPin,
                  showFieldAsBox: true,
                  onSubmit: () {
                    setState(() {});
                  },
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    _lastPin = "";
                  });
                },
                child: Text("Resend OTP")),
          ],
        ),
      ),
    );
  }
}
