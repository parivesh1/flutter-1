import 'dart:io';
import 'package:doctor/screens/doctor%20details/components/days.dart';
import 'package:flutter/cupertino.dart';
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
  TextEditingController clinicNameController = new TextEditingController();
  TextEditingController specializationController = new TextEditingController();
  TextEditingController degreeController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();
  TextEditingController feesController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController startingCheckupTimeController =
      new TextEditingController();
  TextEditingController endingCheckupTimeController =
      new TextEditingController();

  String _name,
      _clinicName,
      _specialization,
      _degree,
      _address,
      _fees,
      _email,
      _startingCheckupTime,
      _endingCheckupTime;

  Widget _buildClinicName() {
    return Platform.isAndroid
        ? TextFormField(
            autofocus: true,
            decoration:
                getDecoration("Clinic Name", Icons.medical_services_rounded),
            validator: (value) {
              if (value.isEmpty) {
                return 'Name is required';
              }
              return null;
            },
            onSaved: (newValue) => _clinicName = newValue,
          )
        : CupertinoTextField(
            autofocus: true,
            controller: clinicNameController,
            suffix: Icon(Icons.medical_services_rounded),
            textCapitalization: TextCapitalization.words,
            placeholder: "Clinic Name",
            placeholderStyle: TextStyle(fontSize: 16),
            onSubmitted: (value) {
              if (value != null) {
                _clinicName = value;
              }
            },
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
            ),
            padding: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
          );
  }

  Widget _buildSpecialization() {
    return Platform.isAndroid
        ? TextFormField(
            autofocus: true,
            decoration:
                getDecoration("Specialization", Icons.medication_rounded),
            validator: (value) {
              if (value.isEmpty) {
                return 'Specialization is required';
              }
              return null;
            },
            onSaved: (newValue) => _specialization = newValue,
          )
        : CupertinoTextField(
            autofocus: true,
            controller: specializationController,
            suffix: Icon(Icons.medication_rounded),
            textCapitalization: TextCapitalization.words,
            placeholder: "Specialization",
            placeholderStyle: TextStyle(fontSize: 16),
            onSubmitted: (value) {
              if (value != null) {
                _specialization = value;
              }
            },
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
            ),
            padding: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
          );
  }

  Widget _buildDegree() {
    return Platform.isAndroid
        ? TextFormField(
            autofocus: true,
            decoration: getDecoration("Degree", Icons.menu_book_rounded),
            validator: (value) {
              if (value.isEmpty) {
                return 'Degree is required';
              }
              return null;
            },
            onSaved: (newValue) => _degree = newValue,
          )
        : CupertinoTextField(
            autofocus: true,
            controller: degreeController,
            suffix: Icon(Icons.menu_book_rounded),
            textCapitalization: TextCapitalization.words,
            placeholder: "Degree",
            placeholderStyle: TextStyle(fontSize: 16),
            onSubmitted: (value) {
              if (value != null) {
                _degree = value;
              }
            },
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
            ),
            padding: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
          );
  }

  Widget _buildFees() {
    return Platform.isAndroid
        ? TextFormField(
            autofocus: true,
            decoration: getDecoration("Fees", Icons.attach_money_rounded),
            validator: (value) {
              if (value.isEmpty) {
                return 'Fees is required';
              }
              return null;
            },
            onSaved: (newValue) => _fees = newValue,
          )
        : CupertinoTextField(
            autofocus: true,
            controller: feesController,
            suffix: Icon(Icons.attach_money_rounded),
            textCapitalization: TextCapitalization.words,
            placeholder: "Fees",
            placeholderStyle: TextStyle(fontSize: 16),
            onSubmitted: (value) {
              if (value != null) {
                _fees = value;
              }
            },
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
            ),
            padding: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
          );
  }

  Widget _buildStartingCheckupTime() {
    return Platform.isAndroid
        ? InkWell(
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
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey[700]),
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
          )
        : CupertinoTextField(
            autofocus: true,
            controller: startingCheckupTimeController,
            suffix: Icon(Icons.timelapse_sharp),
            textCapitalization: TextCapitalization.words,
            placeholder: "Starting Checkup Time:",
            placeholderStyle: TextStyle(fontSize: 16),
            showCursor: false,
            onSubmitted: (value) {
              if (value != null) {
                _startingCheckupTime = value;
              }
            },
            onTap: () => {
              showCupertinoModalPopup(
                  context: context,
                  builder: (_) => Container(
                        height: 500,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 400,
                              child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.time,
                                  initialDateTime: DateTime.now(),
                                  onDateTimeChanged: (val) {

                                      startingCheckupTimeController.text =
                                          "${val.hour}:${val.minute}";

                                  }),
                            ),

                            // Close the modal
                            CupertinoButton(
                              child: const Text('OK'),
                              onPressed: () => Navigator.of(context).pop(),
                            )
                          ],
                        ),
                      ))
            },
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
            ),
            padding: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
          );
  }

  Widget _buildEndingCheckupTime() {
    return Platform.isAndroid
        ? InkWell(
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
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey[700]),
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
          )
        : CupertinoTextField(
            autofocus: true,
            showCursor: false,
            controller: endingCheckupTimeController,
            suffix: Icon(Icons.timelapse_sharp),
            textCapitalization: TextCapitalization.words,
            placeholder: "Ending Checkup Time:",
            placeholderStyle: TextStyle(fontSize: 16),
            onSubmitted: (value) {
              if (value != null) {
                _endingCheckupTime = value;
              }
            },
            onTap: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (_) => Container(
                    height: 500,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 400,
                          child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.time,
                              initialDateTime: DateTime.now(),
                              onDateTimeChanged: (val) {

                                  endingCheckupTimeController.text =
                                  "${val.hour}:${val.minute}";

                              }),
                        ),

                        // Close the modal
                        CupertinoButton(
                          child: const Text('OK'),
                          onPressed: () => Navigator.of(context).pop(),
                        )
                      ],
                    ),
                  ));
            },
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
            ),
            padding: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
          );
  }

  Widget _buildAddress() {
    return Platform.isAndroid
        ? TextFormField(
            autofocus: true,
            decoration:
                getDecoration("Address", Icons.home_repair_service_rounded),
            validator: (value) {
              if (value.isEmpty) {
                return 'Address is required';
              }
              return null;
            },
            onSaved: (newValue) => _address = newValue,
          )
        : CupertinoTextField(
            autofocus: true,
            controller: addressController,
            suffix: Icon(Icons.home_repair_service_rounded),
            textCapitalization: TextCapitalization.words,
            placeholder: "Address",
            placeholderStyle: TextStyle(fontSize: 16),
            onSubmitted: (value) {
              if (value != null) {
                _address = value;
              }
            },
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
            ),
            padding: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
          );
  }

  Widget _buildEmail() {
    return Platform.isAndroid
        ? TextFormField(
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
          )
        : CupertinoTextField(
            autofocus: true,
            controller: emailController,
            suffix: Icon(Icons.email_rounded),
            textCapitalization: TextCapitalization.words,
            placeholder: "Email",
            placeholderStyle: TextStyle(fontSize: 16),
            onSubmitted: (value) {
              if (value != null) {
                _email = value;
              }
            },
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
            ),
            padding: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
          );
    ;
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
            _buildClinicName(),
            SizedBox(
              height: 16,
            ),
            _buildSpecialization(),
            SizedBox(
              height: 16,
            ),
            _buildDegree(),
            SizedBox(
              height: 16,
            ),
            _buildFees(),
            SizedBox(
              height: 16,
            ),
            _buildAddress(),
            SizedBox(
              height: 16,
            ),
            _buildEmail(),
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Material(
                child: Text(
                  "Select Days on which you take Appointments:",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
            Days(),
            SizedBox(
              height: 16,
            ),
            Platform.isAndroid
                ? ElevatedButton(
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
                  )
                : CupertinoButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    color: Colors.blue,
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
    contentPadding: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
    suffixIcon: Icon(data),
  );
}
