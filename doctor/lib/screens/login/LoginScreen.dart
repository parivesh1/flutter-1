import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _name;
  PhoneNumber _phoneNo;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget _buildName() {
    return Platform.isAndroid ?
        TextFormField(
        autofocus: true,
        decoration: InputDecoration(
            labelText: 'Name', hintStyle: TextStyle(fontSize: 16)),
        validator: (value) {
          if (value.isEmpty) {
            return 'Name is required';
          }
          return null;
        },
        onSaved: (newValue) => _name = newValue,
      ) :
       CupertinoTextField(
        decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(5), border: Border.all(width: 0.6)),
        padding: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
        placeholder: "Name",
        placeholderStyle: TextStyle(fontSize: 16, color: Colors.grey[500]),
        autofocus: true,
        clearButtonMode: OverlayVisibilityMode.always,
        textCapitalization: TextCapitalization.words,
        onChanged: (value) {
          _name = value;
        },
      );
    }

  Widget _buildPhoneNo() {
    return Card(
      color: Colors.grey[50],
      elevation: 0,
      child: IntlPhoneField(
        initialCountryCode: "IN",
        decoration: InputDecoration(
          labelText: 'Phone Number',
          hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
        onChanged: (value) {
          _phoneNo = value;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final appBar = AppBar(
      title: Text("Doctor's App"),
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
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: _buildName(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: _buildPhoneNo(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
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
              middle: Text("Doctor App", style: TextStyle(color: Colors.white),),
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
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: _buildName() ,
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
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
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
