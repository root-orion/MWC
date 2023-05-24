import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_champ_ville.dart';
import './xd_champ_quartier.dart';
import './xd_bouton_recherche.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDRechargementDeCarte extends StatelessWidget {
  XDRechargementDeCarte({
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
              Pinned.fromPins(
                Pin(start: 19.0, end: 19.0),
                Pin(size: 244.0, middle: 0.5008),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfffcfcfc),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ),
              Pinned.fromPins(
                Pin(start: 53.0, end: 48.0),
                Pin(size: 42.0, middle: 0.4129),
                child:
                    // Adobe XD layer: 'Champ numero' (component)
                    XDChampVille(),
              ),
              Pinned.fromPins(
                Pin(start: 53.0, end: 52.0),
                Pin(size: 42.0, middle: 0.487),
                child:
                    // Adobe XD layer: 'Champ montant' (component)
                    XDChampQuartier(),
              ),
              Align(
                alignment: Alignment(0.03, 0.177),
                child: SizedBox(
                  width: 193.0,
                  height: 42.0,
                  child:
                      // Adobe XD layer: 'Rechargement' (component)
                      XDBoutonRecherche(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

const String _svg_v06n2 =
    '<svg viewBox="3.0 -119.0 393.0 851.0" ><path transform="translate(3.0, -119.0)" d="M 0 0 L 393 0 L 393 851 L 0 851 L 0 0 Z" fill="#000000" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
