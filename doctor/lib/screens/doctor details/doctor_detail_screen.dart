import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Platform.isAndroid
        ? Scaffold(
            appBar: AppBar(
              title: Text("Verification"),
            ),
            body: Body(),
          )
        : CupertinoPageScaffold(
            child: Body(),
            navigationBar: CupertinoNavigationBar(
              middle: Text("Verification"),
            ),
          );
  }
}
