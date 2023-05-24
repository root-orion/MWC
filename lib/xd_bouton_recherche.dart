import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDBoutonRecherche extends StatelessWidget {
  XDBoutonRecherche({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: const Color(0xffe1bd07),
            borderRadius: BorderRadius.circular(33.0),
          ),
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 60.0,
          ),
        ),
        Container(),
      ],
    );
  }
}
