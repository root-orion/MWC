import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import './xd_bouton_commencer.dart';
import './xd_inscription.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_connexion.dart';

class XDPresentation extends StatelessWidget {
  XDPresentation({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String title = 'My Wash Card';

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'photo-1611239179213…' (shape)
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/photo.png'),
                fit: BoxFit.fill,
              ),
            ),
            // margin: EdgeInsets.fromLTRB(-74.0, 0.0, -101.0, -1.0),
          ),
          // Adobe XD layer: 'fond' (shape)
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/fond.png'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstIn),
              ),
            ),
            // margin: EdgeInsets.fromLTRB(-26.0, -20.0, -26.0, -21.0),
          ),
          Pinned.fromPins(
            Pin(size: 70.w, middle: 0.5),
            Pin(size: 8.h, end: 15.h),
            child:
                // Adobe XD layer: 'Bouton commencer' (component)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDConnexion(),
                ),
              ],
              child: XDBoutonCommencer(),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.273),
            child: SizedBox(
              width: 100.w,
              height: 25.h,
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20.sp,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.w, end: 10.w),
            Pin(size: 20.h, middle: 0.7253),
            child: Text(
              'Votre application professionnelle de lavage auto',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18.sp,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w200,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Pinned.fromPins(
          //   Pin(size: 100.w, start: 10.w),
          //   Pin(size: 4.h, end: 6.h),
          //   child: Row(
          //     children: [
          //       Text(
          //         'Déjà membre? ',
          //         style: TextStyle(
          //           fontFamily: 'Montserrat',
          //           fontSize: 15.sp,
          //           color: const Color(0xffffffff),
          //           fontWeight: FontWeight.w200,
          //         ),
          //       ),
          //       PageLink(
          //         links: [
          //           PageLinkInfo(
          //             transition: LinkTransition.Fade,
          //             ease: Curves.easeOut,
          //             duration: 0.3,
          //             pageBuilder: () => XDInscription(),
          //           ),
          //         ],
          //         child: Text(
          //           'Inscrivez-vous',
          //           style: TextStyle(
          //             fontFamily: 'Montserrat',
          //             fontSize: 15.sp,
          //             color: const Color(0xffe1bd07),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          Pinned.fromPins(
            Pin(start: 15.w, end: 15.w),
            Pin(size: 15.h, start: 7.h),
            child:
                // Adobe XD layer: 'Logo blanc' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Logo-blanc.png'),
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
