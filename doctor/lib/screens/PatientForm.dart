import 'package:flutter/material.dart';

class PatientForm extends StatefulWidget {
  const PatientForm({Key key}) : super(key: key);

  @override
  _PatientFormState createState() => _PatientFormState();
}

class _PatientFormState extends State<PatientForm> {
  String _name;
  String _age;
  String _gender;
  String _groupValue = "Male"; //For radio buttons
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget _buildName() {
    return TextFormField(
      autofocus: true,
      decoration: InputDecoration(labelText: 'Name'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Name is required';
        }
        return null;
      },
      onSaved: (newValue) => _name = newValue,
    );
  }

  Widget _buildAge() {
    return TextFormField(
      autofocus: true,
      decoration: InputDecoration(labelText: 'Age'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Age is required';
        }
        int age = int.tryParse(value);
        if (age < 0 || age > 120) {
          return 'Enter a valid Age';
        }
        return null;
      },
      onSaved: (newValue) => _age = newValue,
    );
  }

  Widget _buildGender() {
    return Row(
      children: [
        RadioListTile(
          title: Text("Male"),
          value: 'Male',
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
        RadioListTile(
          title: Text("Female"),
          value: 'Female',
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildName(),
              _buildAge(),
              _buildGender(),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }
                    _formKey.currentState.save();

                    Navigator.pop(context);
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom))
            ],
          )),
    );
  }
}
