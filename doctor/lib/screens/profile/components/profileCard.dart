import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class card extends StatefulWidget {
  String fieldName;
  String fieldValue;
  IconData fieldIcon;

  card(this.fieldName, this.fieldValue, this.fieldIcon);

  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: widget.fieldValue);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shadowColor: Colors.grey[300],
      margin: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(widget.fieldIcon),
                  iconSize: 32,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.fieldName,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.fieldValue,
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Platform.isAndroid
                          ? AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              title: Text(widget.fieldName),
                              content: TextFormField(
                                initialValue: widget.fieldValue,
                                onChanged: (String value) {
                                  setState(() {
                                    widget.fieldValue = value;
                                  });
                                },
                              ),
                              actions: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      "Edit",
                                      style: TextStyle(color: Colors.black),
                                    ))
                              ],
                            )
                          : CupertinoAlertDialog(
                              title: Text(widget.fieldName),
                              actions: <Widget>[
                                CupertinoDialogAction(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      "Edit",
                                      style: TextStyle(color: Colors.black),
                                    ))
                              ],
                              content: Column(children: [
                                SizedBox(
                                  height: 16,
                                ),
                                CupertinoTextField(
                                  controller: _textController,
                                  clearButtonMode: OverlayVisibilityMode.always,
                                  onChanged: (String value) {
                                    setState(() {
                                      widget.fieldValue = value;
                                    });
                                  },
                                ),
                              ]));
                    });
              },
              icon: Icon(Icons.mode_edit_outline))
        ],
      ),
    );
  }
}
