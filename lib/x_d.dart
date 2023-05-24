import 'package:flutter/material.dart';

class XD extends StatelessWidget {
  XD({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: '25376' (shape)
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/25376.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
