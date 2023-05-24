import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:mywashcard/xd_bouton_commencer_smalll.dart';
import './xd_champ_ville.dart';
import './xd_champ_quartier.dart';
import './xd_bouton_commencer.dart';
import './xd_acceuil.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_connexion.dart';

class XDInscription extends StatelessWidget {
  XDInscription({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'car-wash-and-detali…' (shape)
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/car-wash.jpg'),
                fit: BoxFit.fill,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.05), BlendMode.dstIn),
              ),
            ),
            //margin: EdgeInsets.fromLTRB(-228.0, 1.0, -229.0, 0.0),
          ),
          Pinned.fromPins(
            Pin(start: 12.w, end: 12.w),
            Pin(size: 61.h, end: 11.h),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(19.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xffe1bd07),
                    offset: Offset(0, 0),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.w, middle: 0.5021),
            Pin(size: 10.h, start: 5.h),
            child:
                // Adobe XD layer: 'Logo' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 5.w, end: 5.w),
            Pin(size: 5.h, start: 19.h),
            child: Text(
              'INSCRIPTION',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25.sp,
                color: const Color(0xffe1bd07),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 59.0, end: 60.0),
            Pin(size: 75.0, middle: 0.47),
            child:
                // Adobe XD layer: 'Champ ville' (component)
                    TextField(
                decoration: InputDecoration(
                  label: Text('Prénoms :')
                )
              ),
          ),
          Pinned.fromPins(
            Pin(start: 59.0, end: 60.0),
            Pin(size: 75.0, middle: 0.35),
            child:
                // Adobe XD layer: 'Champ ville' (component)
                    TextField(
                decoration: InputDecoration(
                  label: Text('Nom :')
                )
              ),
          ),
          
          Pinned.fromPins(
            Pin(start: 60.0, end: 59.0),
            Pin(size: 76.0, middle: 0.7),
            child:
                // Adobe XD layer: 'Champ quartier' (component)
                   TextField(
                decoration: InputDecoration(
                  label: Text('Mot de passe :')
                )
              ),
          ),
          Pinned.fromPins(
            Pin(start: 59.0, end: 60.0),
            Pin(size: 76.0, middle: 0.59),
            child:
                // Adobe XD layer: 'Champ quartier' (component)
                   TextField(
                decoration: InputDecoration(
                  label: Text('Numero')
                )
              ),
          ),
          Pinned.fromPins(
            Pin(start: 77.0, end: 77.0),
            Pin(size: 56.0, end: 95.0),
            child:
                // Adobe XD layer: 'Bouton commencer' (component)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.linear,
                  duration: 0.3,
                  pageBuilder: () => XDAcceuil(),
                ),
              ],
              child: XDBoutonCommencerSmall(),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 45.w, start: 10.w),
            Pin(size: 4.h, end: 3.h),
            child: Text(
              'Déjà membre? ',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16.sp,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 45.w, end: 7.w),
            Pin(size: 4.h, end: 3.h),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.linear,
                  duration: 0.3,
                  pageBuilder: () => XDConnexion(),
                ),
              ],
              child: Text(
                'Connectez-vous',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16.sp,
                  color: const Color(0xffe1bd07),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
