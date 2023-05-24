import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDComposant41 extends StatelessWidget {
  XDComposant41({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 0),
                blurRadius: 6,
              ),
            ],
          ),
        ),
        Container(),
      ],
    );
  }
}
