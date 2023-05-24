import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class XDListeResultat extends StatelessWidget {
  XDListeResultat({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 15.h),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: const Color(0xfffcfcfc),
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  // offset: Offset(0, 0),
                  blurRadius: 10,
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 83.0, start: 15.0),
            Pin(start: 12.0, end: 12.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: const BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                border: Border.all(width: 1.0, color: const Color(0xffdcdcdc)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 221.0, end: 24.0),
            Pin(size: 24.0, middle: 0.2821),
            child: const Text(
              'Nom du lavage',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20,
                color:  Color(0xffe1bd07),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 221.0, end: 24.0),
            Pin(size: 19.0, middle: 0.6747),
            child: const Text(
              'Situation géographique',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                color:  Color(0xff000000),
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, start: 39.0),
            Pin(size: 36.0, middle: 0.5152),
            child:
                // Adobe XD layer: '1160358' (shape)
                Container(
                  // cs
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1160358.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
