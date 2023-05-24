import 'package:flutter/material.dart';
import './xd_composant41.dart';

class XDNotifications extends StatelessWidget {
  XDNotifications({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(35.0, 48.0, 34.0, 44.0),
            child: XDComposant41(),
          ),
        ],
      ),
    );
  }
}
