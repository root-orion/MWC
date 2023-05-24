import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDChampQuartier extends StatelessWidget {
  XDChampQuartier({
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
          Pin(size: 74.0, start: 19.0),
          Pin(size: 24.0, middle: 0.5217),
          child: Text(
            'Quatier',
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
