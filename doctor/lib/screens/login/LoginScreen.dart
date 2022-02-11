import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  PhoneNumber _phoneNo;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildPhoneNo() {
    return Card(
      elevation: 0,
      color: Colors.grey[50],
      child: IntlPhoneField(
        initialCountryCode: "IN",
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          labelText: 'Phone Number',
          labelStyle: GoogleFonts.publicSans(fontWeight: FontWeight.w400),
          hintStyle: TextStyle(fontSize: 16),
          border: UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
          ),
        ),
        style: GoogleFonts.mulish(
            fontWeight: FontWeight.w800, color: Color(0xFF665D5D)),
        onChanged: (value) {
          _phoneNo = value;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "Client App",
        style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w600, color: Colors.black, fontSize: 24),
      ),
      centerTitle: true,
      shape: Border(bottom: BorderSide(color: Colors.black, width: 3)),
    );

    return Platform.isAndroid
        ? Scaffold(
            appBar: appBar,
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: _buildPhoneNo(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          child: Text(
                            "Log In",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          onPressed: () {
                            if (!_formKey.currentState.validate()) {
                              return;
                            }
                            _formKey.currentState.save();
                            Navigator.pushNamed(context, 'otp');
                          },
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom))
                      ],
                    )),
              ),
            ))
        : CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text(
                "Doctor App",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.blue,
            ),
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: _buildPhoneNo(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CupertinoButton(
                              color: Colors.blue,
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              onPressed: () {
                                if (!_formKey.currentState.validate()) {
                                  return;
                                }
                                _formKey.currentState.save();
                                Navigator.pushNamed(context, 'otp');
                              }),
                          Padding(
                              padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom))
                        ],
                      )),
                )),
          );
  }
}

//   return FlutterLogin(
//     onLogin: (p0) => Future(null),
//     onSignup: (p0) => Future(null),
//     onRecoverPassword: (p0) => Future(null),
//     additionalSignupFields: [
//       UserFormField(keyName: "Name"),
//       UserFormField(keyName: "Age"),
//       UserFormField(keyName: "Contact No.")
//     ],
//     onSubmitAnimationCompleted: () {
//       Navigator.of(context).pushReplacement(MaterialPageRoute(
//         builder: (context) => WaitingList(),
//       ));
//     },
//   );
// }
