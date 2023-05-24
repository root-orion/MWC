import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class XDBoutonCommencerSmall extends StatelessWidget {
  XDBoutonCommencerSmall({
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
          Pin(start: 5.w, end: 5.w),
          Pin(size: 5.h, middle: 0.5),
          child: Text(
            'SE CONNECTER',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 15.sp,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
        ),
      ],
    );
  }
}
