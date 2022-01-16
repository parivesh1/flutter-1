import 'package:doctor/screens/doctor%20details/components/days.dart';
import 'package:doctor/screens/login_success/login_success_screen.dart';
import 'package:flutter/material.dart';

class DetailsForm extends StatefulWidget {
  const DetailsForm({Key key}) : super(key: key);

  @override
  _DetailsFormState createState() => _DetailsFormState();
}

class _DetailsFormState extends State<DetailsForm> {
  TimeOfDay startingSelectedTime;
  TimeOfDay endingSelectedTime;

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
      decoration: getDecoration("Clinic Name", Icons.medical_services_rounded),
      validator: (value) {
        if (value.isEmpty) {
          return 'Name is required';
        }
        return null;
      },
      onSaved: (newValue) => _clinicName = newValue,
    );
  }

  Widget _buildSpecialization() {
    return TextFormField(
      autofocus: true,
      decoration: getDecoration("Specialization", Icons.medication_rounded),
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
      decoration: getDecoration("Degree", Icons.menu_book_rounded),
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
      decoration: getDecoration("Fees", Icons.attach_money_rounded),
      validator: (value) {
        if (value.isEmpty) {
          return 'Fees is required';
        }
        return null;
      },
      onSaved: (newValue) => _fees = newValue,
    );
  }

  Widget _buildStartingCheckupTime() {
    return InkWell(
      onTap: () {
        _showTimePickerStarting(context);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Starting Checkup Time:",
                    style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  ),
                  startingSelectedTime != null
                      ? Text(
                          "${startingSelectedTime.hour}:${startingSelectedTime.minute}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      : Text(""),
                ],
              ),
              Icon(Icons.timelapse_sharp)
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.black, width: 1)),
      ),
    );
  }

  Widget _buildEndingCheckupTime() {
    return InkWell(
      onTap: () {
        _showTimePickerEnding(context);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Ending Checkup Time:",
                    style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  ),
                  endingSelectedTime != null
                      ? Text(
                          "${endingSelectedTime.hour}:${endingSelectedTime.minute}",
                          style: TextStyle(fontWeight: FontWeight.bold))
                      : Text(""),
                ],
              ),
              Icon(Icons.timelapse_sharp)
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.black, width: 1)),
      ),
    );
  }

  Widget _buildaddress() {
    return TextFormField(
      autofocus: true,
      decoration: getDecoration("Address", Icons.home_repair_service_rounded),
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
      autofocus: true,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => _email = newValue,
      validator: (value) {
        if (value.isEmpty) {
          return "Email is Empty";
        }
        return null;
      },
      decoration: getDecoration("Email", Icons.email_rounded),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            _buildclinicName(),
            SizedBox(
              height: 16,
            ),
            _buildSpecialization(),
            SizedBox(
              height: 16,
            ),
            _builddegree(),
            SizedBox(
              height: 16,
            ),
            _buildfees(),
            SizedBox(
              height: 16,
            ),
            _buildaddress(),
            SizedBox(
              height: 16,
            ),
            _buildemail(),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(flex: 100, child: _buildStartingCheckupTime()),
                Expanded(flex: 2, child: Text("")),
                Expanded(flex: 100, child: _buildEndingCheckupTime()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Select Days on which you take Appointments:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Days(),
            SizedBox(
              height: 8,
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

                Navigator.pushNamed(context, 'loginSuccess');
              },
            ),
          ],
        ),
        key: _formKey,
      ),
    );
  }

  _showTimePickerStarting(BuildContext context) async {
    final TimeOfDay timeOfDay = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: 0, minute: 15),
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != startingSelectedTime) {
      setState(() {
        startingSelectedTime = timeOfDay;
      });
    }
  }

  _showTimePickerEnding(BuildContext context) async {
    final TimeOfDay timeOfDay = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: 0, minute: 15),
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != startingSelectedTime) {
      setState(() {
        endingSelectedTime = timeOfDay;
      });
    }
  }
}

InputDecoration getDecoration(String title, IconData data) {
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
    suffixIcon: Icon(data),
  );
}
