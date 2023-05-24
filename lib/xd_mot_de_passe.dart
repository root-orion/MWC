import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_bouton_lavage.dart';
import './xd_acceuil.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_icon_support.dart';
import './xd_icon_profil.dart';
import './xd_icon_card.dart';
import './x_d.dart';
import './xd_presentation.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDMotDePasse extends StatelessWidget {
  XDMotDePasse({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Pin(size: 111.0, middle: 0.6306),
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
            Pin(size: 80.0, middle: 0.1753),
            child: Text(
              'Modification du mot de passe',
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
            Pin(start: 0.0, end: 0.0),
            Pin(size: 76.0, end: -1.0),
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
            Pin(start: 25.0, end: 25.0),
            Pin(size: 304.2, middle: 0.3911),
            child:
                // Adobe XD layer: 'Info perso' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'bg' (shape)
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfffcfcfc),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x1c000000),
                        offset: Offset(0, 4),
                        blurRadius: 23,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(21.0, 29.9, 19.0, 32.9),
                  child:
                      // Adobe XD layer: 'Form' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 84.0, middle: 0.5845),
                        child:
                            // Adobe XD layer: 'Contact urgence' (group)
                            Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(24.0),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xffebebeb)),
                              ),
                              margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                width: 172.0,
                                height: 16.0,
                                child: Text(
                                  'Confirmez le mot de passe',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13,
                                    color: const Color(0xff717171),
                                    letterSpacing: -0.11188701248168946,
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: false,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 80.0, start: 0.0),
                        child:
                            // Adobe XD layer: 'Nom' (group)
                            Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(24.0),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xffebebeb)),
                              ),
                              margin: EdgeInsets.fromLTRB(0.0, 21.0, 0.0, 0.0),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                width: 138.0,
                                height: 16.0,
                                child: Text(
                                  'Saisir le mot de passe',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13,
                                    color: const Color(0xff767676),
                                    letterSpacing: -0.11188701248168946,
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: false,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 17.4, end: 19.4),
                        Pin(size: 44.3, end: 0.0),
                        child:
                            // Adobe XD layer: 'search btn' (group)
                            Stack(
                          children: <Widget>[
                            SizedBox.expand(
                                child:
                                    // Adobe XD layer: 'Rectangle Copy 3' (shape)
                                    SvgPicture.string(
                              _svg_n6z6r6,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                            Pinned.fromPins(
                              Pin(startFraction: 0.3535, endFraction: 0.3535),
                              Pin(size: 19.0, middle: 0.5),
                              child:
                                  // Adobe XD layer: 'Search flight' (text)
                                  Text(
                                'MODIFIER',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15,
                                  color: const Color(0xffffffff),
                                  letterSpacing: -0.129100399017334,
                                ),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_n6z6r6 =
    '<svg viewBox="-38.6 -1.9 266.2 44.3" ><path transform="translate(-38.6, -1.93)" d="M 18.44992446899414 0 L 247.7561340332031 0 C 257.9457397460938 0 266.2060546875 9.908354759216309 266.2060546875 22.13092994689941 C 266.2060546875 34.35350799560547 257.9457397460938 44.26185989379883 247.7561340332031 44.26185989379883 L 18.44992446899414 44.26185989379883 C 8.260312080383301 44.26185989379883 0 34.35350799560547 0 22.13092994689941 C 0 9.908354759216309 8.260312080383301 0 18.44992446899414 0 Z" fill="#e1bd07" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
