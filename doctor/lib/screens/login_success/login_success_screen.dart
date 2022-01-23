import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? Scaffold(
            appBar: AppBar(
              leading: SizedBox(),
              title: Text("Login Success"),
            ),
            body: Body(),
          )
        : CupertinoPageScaffold(
            child: Body(),
            navigationBar: CupertinoNavigationBar(
              middle: Text("Login Success"),
              backgroundColor: Colors.blue,
            ),
          );
  }
}
