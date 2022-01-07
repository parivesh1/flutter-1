import 'package:doctor/screens/otp/otp_screen.dart';
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
  Widget _buildname() {
    return TextFormField(
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
    );
  }

  Widget _buildPhoneNo() {
    return Padding(
      padding: const EdgeInsets.all(16),
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
    return Scaffold(
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
                  child: _buildname(),
                ),
                _buildPhoneNo(),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text(
                    "Log In",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }
                    _formKey.currentState.save();

                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return OtpScreen(_phoneNo);
                      },
                    ));
                  },
                ),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            )),
      ),
    ));
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
