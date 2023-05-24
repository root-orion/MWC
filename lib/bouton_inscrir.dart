import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDBoutonCommencer extends StatelessWidget {
  XDBoutonCommencer({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffe1bd07),
            borderRadius: BorderRadius.circular(31.0),
          ),
        ),
        Pinned.fromPins(
          Pin(start: 42.0, end: 42.0),
          Pin(size: 34.0, middle: 0.5),
          child: Text(
            'S\'INSCRIRE',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 25,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w200,
            ),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
        ),
      ],
    );
  }
}
