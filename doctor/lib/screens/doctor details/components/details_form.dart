import 'package:doctor/screens/waitinglist.dart';
import 'package:flutter/material.dart';

class DetailsFormScreen extends StatefulWidget {
  const DetailsFormScreen({Key key}) : super(key: key);

  @override
  _DetailsFormState createState() => _DetailsFormState();
}

class _DetailsFormState extends State<DetailsFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name,
      _clinicName,
      _specialization,
      _degree,
      _address,
      _fees,
      _averageCheckupTime;
  Widget _buildclinicName() {
    return TextFormField(
      autofocus: true,
      decoration: InputDecoration(labelText: 'Clinic Name'),
      validator: (value) {
        return null;
      },
      onSaved: (newValue) => _clinicName = newValue,
    );
  }

  Widget _buildSpecialization() {
    return TextFormField(
      autofocus: true,
      decoration: InputDecoration(labelText: 'Specialization'),
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
      decoration: InputDecoration(labelText: 'Degree'),
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
      decoration: InputDecoration(labelText: 'Fees'),
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
      decoration: InputDecoration(labelText: 'Average Checkup Time'),
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
      decoration: InputDecoration(labelText: 'Address'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Address is required';
        }
        return null;
      },
      onSaved: (newValue) => _address = newValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
                _buildclinicName(),
                _buildSpecialization(),
                _builddegree(),
                _buildaverageCheckupTime(),
                _buildfees(),
                _buildaddress(),
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
                        return WaitingList();
                      },
                    ));
                  },
                ),
      ],
    ),
    key: _formKey,
    );
  }
}
