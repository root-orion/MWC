import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './x_dcarte.dart';
import './xd_bouton_rechargement.dart';
import './xd_bouton_lavage.dart';
import './xd_acceuil.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_icon_support.dart';
import './xd_icon_profil.dart';
import './xd_icon_card.dart';
import './x_d.dart';
import './xd_presentation.dart';

class XDcardPage extends StatelessWidget {
  XDcardPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -19.0, end: -11.0),
            Pin(size: 240.0, start: 33.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, 1.036),
                      end: Alignment(0.0, -0.547),
                      colors: [
                        const Color(0xff000000),
                        const Color(0xffcbcbcb)
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
                // Adobe XD layer: 'erik-mclean-iFq8Q3i…' (shape)
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(''),
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.dstIn),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(16.0, 8.0, 11.0, 0.0),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28.0),
                topRight: Radius.circular(28.0),
              ),
            ),
            margin: EdgeInsets.fromLTRB(0.0, 236.0, 0.0, 0.0),
          ),
          Pinned.fromPins(
            Pin(start: 57.0, end: 56.0),
            Pin(size: 111.0, middle: 0.5959),
            child:
                // Adobe XD layer: 'Logo' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 80.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffe1bd07),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                ),
              ),
            ),
          ),
          Container(),
          Pinned.fromPins(
            Pin(start: 95.0, end: 95.0),
            Pin(size: 34.0, start: 30.0),
            child: Text(
              '10 000 F CFA',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 28,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 42.0, middle: 0.5014),
            Pin(size: 15.0, start: 17.0),
            child: Text(
              'SOLDE',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 12,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 26.0),
            Pin(size: 40.0, start: 135.0),
            child: Text(
              'Mes cartes',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 33,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 17.0, end: 16.0),
            Pin(size: 233.0, end: 80.0),
            child:
                // Adobe XD layer: 'Carte' (component)
                XDcarte(),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 36.0),
            Pin(size: 62.0, middle: 0.2467),
            child:
                // Adobe XD layer: 'Bouton rechargement' (component)
                XDBoutonRechargement(),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 76.0, end: 42.0),
            child:
                // Adobe XD layer: 'Menu' (group)
                Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfffcfcfc),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0),
                ),
                Pinned.fromPins(
                  Pin(size: 85.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Bouton lavage' (component)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.linear,
                        duration: 0.3,
                        pageBuilder: () => XDAcceuil(),
                      ),
                    ],
                    child: XDBoutonLavage(),
                  ),
                ),
                Align(
                  alignment: Alignment(0.48, 0.417),
                  child: SizedBox(
                    width: 24.0,
                    height: 28.0,
                    child:
                        // Adobe XD layer: 'icon_support' (component)
                        XDIconSupport(),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.466, 0.472),
                  child: SizedBox(
                    width: 22.0,
                    height: 23.0,
                    child:
                        // Adobe XD layer: 'icon_profil' (component)
                        XDIconProfil(),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 33.0, start: 27.0),
                  Pin(size: 26.0, middle: 0.76),
                  child:
                      // Adobe XD layer: 'icon_card' (component)
                      XDIconCard(),
                ),
                Pinned.fromPins(
                  Pin(size: 27.0, end: 31.0),
                  Pin(size: 27.0, middle: 0.7551),
                  child:
                      // Adobe XD layer: '25376' (component)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDPresentation(),
                      ),
                    ],
                    child: XD(),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 17.0, end: 16.0),
            Pin(size: 233.0, middle: 0.4803),
            child:
                // Adobe XD layer: 'Carte' (component)
                XDcarte(),
          ),
        ],
      ),
    );
  }
}
