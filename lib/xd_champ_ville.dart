import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDChampVille extends StatelessWidget {
  XDChampVille({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(width: 1.0, color: const Color(0xffebebeb)),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 40.0, start: 19.0),
          Pin(size: 24.0, middle: 0.4783),
          child: Text(
            'Ville',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              color: const Color(0xffd5d5d5),
              fontWeight: FontWeight.w100,
            ),
            softWrap: false,
          ),
        ),
      ],
    );
  }
}
