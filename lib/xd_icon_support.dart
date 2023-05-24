import 'package:flutter/material.dart';

class XDIconSupport extends StatelessWidget {
  XDIconSupport({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'icon_support' (shape)
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/icon_support.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
