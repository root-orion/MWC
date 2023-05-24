import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDQrCode extends StatelessWidget {
  XDQrCode({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Rechargement' (group)
          Stack(
            children: <Widget>[
              SizedBox.expand(
                  child: SvgPicture.string(
                _svg_v06n2,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              )),
            ],
          ),
          Pinned.fromPins(
            Pin(size: 364.0, start: 15.0),
            Pin(size: 368.0, start: 242.0),
            child:
                // Adobe XD layer: 'qr' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
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

const String _svg_v06n2 =
    '<svg viewBox="3.0 -119.0 393.0 851.0" ><path transform="translate(3.0, -119.0)" d="M 0 0 L 393 0 L 393 851 L 0 851 L 0 0 Z" fill="#000000" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
