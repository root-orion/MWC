import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';


class XDBoutonLavage extends StatelessWidget {
  XDBoutonLavage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffe1bd07),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(71.0),
              topRight: Radius.circular(71.0),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 0),
                blurRadius: 6,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.gps_fixed,
            color: Colors.white,
            size: 60.sp,
            
          ),
        ),
      ],
    );
  }
}
