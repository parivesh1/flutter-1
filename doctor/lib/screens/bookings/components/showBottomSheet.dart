import 'package:flutter/material.dart';

Future<dynamic> bottomSheet(
    BuildContext context, String name, int age, int phoneNumber) {
  return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 158, 129, 190),
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(35),
              topRight: const Radius.circular(35),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text("Patient Details",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w700)),
                  trailing: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(9),
                      child: Text(
                        "Contact",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 158, 129, 190),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(height: 1, thickness: 1, color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.014,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Name:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          Text(name,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Age:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          Text(age.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ph. Number:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          Text(phoneNumber.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
