import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:mywashcard/under_construct.dart';
import 'package:mywashcard/xd_profil.dart';
import 'package:mywashcard/xd_solde.dart';
import './xd_bouton_rechargement.dart';
import './xd_bouton_lavage.dart';
import './xd_acceuil.dart';

import './xd_presentation.dart';
import './x_dcarte.dart';

class XDcardPagenew1 extends StatefulWidget {
  XDcardPagenew1({
    Key? key,
  }) : super(key: key);

  @override
  State<XDcardPagenew1> createState() => _XDcardPagenew1State();
}

class _XDcardPagenew1State extends State<XDcardPagenew1> {
  double mySolde = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -15.w, end: -15.w),
            Pin(size: 40.h, start: 0.h),
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
                  alignment: Alignment.center,
                  constraints:
                      BoxConstraints(minWidth: 100.w, minHeight: 100.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/erik-mclean.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.dstIn),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(16.0, 8.0, 11.0, 0.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ma carte',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.dp,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      XDBoutonRechargement(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 227, 223, 223),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28.0),
                topRight: Radius.circular(28.0),
              ),
            ),
            margin: EdgeInsets.fromLTRB(0.0, 35.h, 0.0, 0.0),
            child:
                // Adobe XD layer: 'Logo' (shape)
                Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Logo.png'),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstIn),
                ),
              ),
              // child: Row(
              //   children: [
              //      Column(
              //        children: [
              //          XDcarte(),
              //        ],
              //      ),
              //   ],
              // ),
            ),
          ),

          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 80.0, start: 0.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffe1bd07),
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
          //   Pin(start: 27.0, end: 26.0),
          //   Pin(size: 40.0, start: 100.0),
          //   child: Text(
          //     'Mes cartes',
          //     style: TextStyle(
          //       fontFamily: 'Montserrat',
          //       fontSize: 33,
          //       color: const Color(0xffffffff),
          //       fontWeight: FontWeight.w300,
          //     ),
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          // Pinned.fromPins(
          //   Pin(start: 37.0, end: 36.0),
          //   Pin(size: 62.0, middle: 0.2467),
          //   child:
          //       // Adobe XD layer: 'Bouton rechargement' (component)
          //       XDBoutonRechargement(),
          // ),

          Pinned.fromPins(
            Pin(start: 5.w, end: 5.w),
            Pin(size: 33.h, middle: 0.75),
            child:
                // Adobe XD layer: 'Carte' (component)
                XDcarte(),
          ),
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
                      MaterialPageRoute(builder: (contet) => UnderConstruct()));
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
              constraints: BoxConstraints(maxHeight: 25.h, maxWidth: 45.w),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "NOUS SOMMES OUVERT 24/24h 7/7j",
                      style: TextStyle(color: Color(0xffe1bd07),),
                      textAlign:TextAlign.center,
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

  // _fetch() async {
  //   try {
  //     final firebaseUser = await FirebaseAuth.instance.currentUser;
  //     if (firebaseUser != null) {
  //       final ds = await FirebaseFirestore.instance
  //           .collection('users')
  //           .doc(firebaseUser.uid)
  //           .get();
  //       if (ds.exists) {
  //         final solde = ds.data()!['Solde'];
  //         if (solde != null) {
  //           mySolde = double.tryParse(solde.toString()) ?? 0;
  //           print(mySolde);
  //         } else {
  //           print('The value for the "Solde" field is null.');
  //         }
  //       } else {
  //         print('The document does not exist.');
  //       }
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
