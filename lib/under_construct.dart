import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:mywashcard/x_dcard_pagenew1.dart';
import 'package:mywashcard/xd_profil.dart';
import 'package:mywashcard/xd_solde.dart';
import './xd_champ_ville.dart';
import './xd_champ_quartier.dart';
import './xd_bouton_recherche.dart';
import './xd_resultat_recherche.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './xd_presentation.dart';
import './constants.dart';
import 'recherche_group.dart';
import 'xd_acceuil.dart';


class UnderConstruct extends StatefulWidget {
  const UnderConstruct({super.key});

  @override
  State<UnderConstruct> createState() => _UnderConstructState();
}

class _UnderConstructState extends State<UnderConstruct> {
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
                  decoration:  BoxDecoration(
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
                      image: const AssetImage('assets/images/erik-mclean.jpg'),
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
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28.0),
                topRight: Radius.circular(28.0),
              ),
            ),
            margin: EdgeInsets.fromLTRB(0.0, 35.h, 0.0, 0.0),
          ),
          Pinned.fromPins(
            Pin(start: 10.w, end: 10.w),
            Pin(size: 20.h, middle: 0.6297),
            child:
                // Adobe XD layer: 'Logo' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Logo.png'),
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
              child: XDSolde(),
            ),
          ),
          Container(),
          // Pinned.fromPins(
          //   Pin(start: 10.w, end: 10.w),
          //   Pin(size: 5.h, start: 6.h),
          //   child: FutureBuilder(
          //     future: _fetch(),
          //     builder: (context, snapshot) {
          //       if (snapshot.connectionState != ConnectionState.done)
          //         return Text("Chargement...", textAlign: TextAlign.center);
          //       return Text(
          //         "${mySolde} FCFA",
          //         textAlign: TextAlign.center,
          //         style: TextStyle(
          //           fontFamily: 'Montserrat',
          //           fontSize: 25.dp,
          //           color: const Color(0xffffffff),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          // Pinned.fromPins(
          //   Pin(size: 40.w, middle: 0.5014),
          //   Pin(size: 4.h, start: 4.h),
          //   child: Text(
          //     'SOLDE',
          //     style: TextStyle(
          //       fontFamily: 'Montserrat',
          //       fontSize: 10.dp,
          //       color: const Color(0xffffffff),
          //       fontWeight: FontWeight.w300,
          //     ),
          //     textAlign: TextAlign.center,
          //     softWrap: false,
          //   ),
          // ),
          Pinned.fromPins(
            Pin(start: 5.w, end: 5.w),
            Pin(size: 10.h, middle: 0.1565),
            child: Text(
              'Trouver un lavage',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 27.dp,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Pinned.fromPins(
          //   Pin(start: 7.w, end: 7.w),
          //   Pin(size: 23.h, middle: 0.3),
          //   child:
          //       // Adobe XD layer: 'Recherche' (group)
          //      const RechercheGroup(),
          // ),
        ],
      ),
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Color(0xffe1bd07),

            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => XDAcceuil()));
            },
            child: Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            // elevation: 5.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 255, 255, 255),

        // \
        elevation: 20.0,

        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.credit_card_sharp),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => XDcardPagenew1()));
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contet) => XDProfil()));
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.headset_mic),
                onPressed: () {
                  _showSimpleModalDialog(context);
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => XDPresentation()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
  _showSimpleModalDialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Container(
              constraints: BoxConstraints(maxHeight: 25.h, maxWidth: 65.w),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "NOUS SOMMES OUVERT 24/24h 7/7j",
                      style: TextStyle(color: Color(0xffe1bd07)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.mail),
                          SizedBox(width: 10.0),
                          Text("infos@mywashcard.com"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 10.0),
                          Text("+225 0759795997"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 10.0),
                          Text("+225 0759795997"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}