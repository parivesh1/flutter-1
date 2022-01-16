import 'package:flutter/material.dart';

class card extends StatefulWidget {
  String fieldName;
  String fieldvalue;
  IconData fieldIcon;
  card(this.fieldName, this.fieldvalue, this.fieldIcon);

  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
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
                      widget.fieldvalue,
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
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        title: Text(widget.fieldName),
                        content: TextFormField(
                          initialValue: widget.fieldvalue,
                          onChanged: (String value) {
                            setState(() {
                              widget.fieldvalue = value;
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
                      );
                    });
              },
              icon: Icon(Icons.mode_edit_outline))
        ],
      ),
    );
  }
}
