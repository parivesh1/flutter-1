import 'package:doctor/screens/login_success/login_success_screen.dart';
import 'package:doctor/screens/waitinglist.dart';
import 'package:flutter/material.dart';

class DetailsForm extends StatefulWidget {
  const DetailsForm({Key key}) : super(key: key);

  @override
  _DetailsFormState createState() => _DetailsFormState();
}

class _DetailsFormState extends State<DetailsForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name,
      _clinicName,
      _specialization,
      _degree,
      _address,
      _fees,
      _email,
      _averageCheckupTime;
  Widget _buildclinicName() {
    return TextFormField(
      autofocus: true,
      decoration: getDecoration("Clinic Name"),
      validator: (value) {
        return null;
      },
      onSaved: (newValue) => _clinicName = newValue,
    );
  }

  Widget _buildSpecialization() {
    return TextFormField(
      autofocus: true,
      decoration: getDecoration("Specialization"),
      validator: (value) {
        if (value.isEmpty) {
          return 'Specialization is required';
        }
        return null;
      },
      onSaved: (newValue) => _specialization = newValue,
    );
  }

  Widget _builddegree() {
    return TextFormField(
      autofocus: true,
      decoration: getDecoration("Degree"),
      validator: (value) {
        if (value.isEmpty) {
          return 'Degree is required';
        }
        return null;
      },
      onSaved: (newValue) => _degree = newValue,
    );
  }

  Widget _buildfees() {
    return TextFormField(
      autofocus: true,
      decoration: getDecoration("Fees"),
      validator: (value) {
        if (value.isEmpty) {
          return 'Fees is required';
        }
        return null;
      },
      onSaved: (newValue) => _fees = newValue,
    );
  }

  Widget _buildaverageCheckupTime() {
    return TextFormField(
      autofocus: true,
      decoration: getDecoration("Check up Time"),
      validator: (value) {
        if (value.isEmpty) {
          return 'Time is required';
        }
        return null;
      },
      onSaved: (newValue) => _averageCheckupTime = newValue,
    );
  }

  Widget _buildaddress() {
    return TextFormField(
      autofocus: true,
      decoration: getDecoration("Address"),
      validator: (value) {
        if (value.isEmpty) {
          return 'Address is required';
        }
        return null;
      },
      onSaved: (newValue) => _address = newValue,
    );
  }

  Widget _buildemail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => _email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {}
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          return "";
        }
        return "";
      },
      decoration: getDecoration("Email"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            _buildclinicName(),
            SizedBox(
              height: 10,
            ),
            _buildSpecialization(),
            SizedBox(
              height: 10,
            ),
            _builddegree(),
            SizedBox(
              height: 10,
            ),
            _buildaverageCheckupTime(),
            SizedBox(
              height: 10,
            ),
            _buildfees(),
            SizedBox(
              height: 10,
            ),
            _buildaddress(),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onPressed: () {
                if (!_formKey.currentState.validate()) {
                  return;
                }
                _formKey.currentState.save();

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return LoginSuccessScreen();
                  },
                ));
              },
            ),
          ],
        ),
        key: _formKey,
      ),
    );
  }
}

InputDecoration getDecoration(String title) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      gapPadding: 10,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      gapPadding: 10,
    ),
    labelText: title,

    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    suffixIcon: Icon(Icons.email),
  );
}
