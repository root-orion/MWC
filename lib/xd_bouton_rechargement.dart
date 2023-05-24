import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDBoutonRechargement extends StatelessWidget {
  XDBoutonRechargement({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffe1bd07),
            borderRadius: BorderRadius.circular(33.0),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 0),
                blurRadius: 6,
              ),
            ],
          ),
          child: const Padding(
            padding:  EdgeInsets.all(10.0),
            child: Text(
              'RECHARGER MA CARTE',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                color:  Color(0xffffffff),
              ),
              softWrap: false,
            ),
          ),
        ),
       
      ],
    );
  }
}
