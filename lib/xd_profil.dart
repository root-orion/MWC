import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:mywashcard/x_dcard_pagenew1.dart';
import 'package:mywashcard/xd_solde.dart';

import './xd_acceuil.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_presentation.dart';
import './xd_informations_personnelle.dart';
import './xd_vhicules.dart';
import './xd_mot_de_passe.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'under_construct.dart';

class XDProfil extends StatefulWidget {
  XDProfil({
    Key? key,
  }) : super(key: key);

  @override
  State<XDProfil> createState() => _XDProfilState();
}

class _XDProfilState extends State<XDProfil> {
  double mySolde = 0;
  String myName='';
  String myPrenoms='';
  
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
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, 1.036),
                      end: Alignment(0.0, -0.547),
                      colors: [
                        Color(0xff000000),
                        Color(0xffcbcbcb)
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
                      colorFilter: ColorFilter.mode(
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
                  image: const AssetImage('assets/images/Logo.png'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 80.0, start: 0.0),
            child: Container(
              decoration: const BoxDecoration(
                color:  Color(0xffe1bd07),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                ),
               
              ),
               child:XDSolde(),
            ),
          ),
          Container(),
    
          Pinned.fromPins(
            Pin(start: 27.0, end: 26.0),
            Pin(size: 40.0, middle: 0.1667),
            child: Text(
              'Mon compte',
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
            Pin(start: 25.0, end: 25.0),
            Pin(size: 200.0, middle: 0.09.h),
            child:
                // Adobe XD layer: 'Profil' (group)
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
               
                Pinned.fromPins(
                  Pin(start: 19.5, end: 20.5),
                  Pin(size: 1.0, middle: 0.6462),
                  child:
                      // Adobe XD layer: 'line1' (shape)
                      SvgPicture.string(
                    _svg_ifw781,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 19.5, end: 20.5),
                  Pin(size: 1.0, end: 54.0),
                  child:
                      // Adobe XD layer: 'line1' (shape)
                      SvgPicture.string(
                    _svg_x2n1bj,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment(0.118, -0.556),
                  child: FutureBuilder(
                    future: _fetch_personal_data(),
                    builder: (context,snapshot) {
                      if (snapshot.connectionState != ConnectionState.done)
                      return Text("Chargement...", textAlign: TextAlign.center);
                       return SizedBox(
                          width: 123.0,
                         height: 55.0,
                    child:
                        // Adobe XD layer: 'from' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size:20.w, start: 2.w),
                          Pin(size: 16.0, end: 0.0),
                          child:
                              // Adobe XD layer: 'Group 7' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(startFraction: 0.0, endFraction: 0.0),
                                Pin(size: 3.h, middle: 0),
                                child:
                                    // Adobe XD layer: 'New Delhi' (text)
                                    Text(
                                  '06-11-2021',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.dp,
                                    color: const Color(0xffe1bd07),
                                    letterSpacing: -0.1291004056930542,
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 78.0, start: 1.5),
                          Pin(size: 13.0, middle: 0.619),
                          child:
                              // Adobe XD layer: 'Group 7' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(startFraction: 0.0, endFraction: 0.0),
                                Pin(size: 13.0, middle: 0.5),
                                child:
                                    // Adobe XD layer: 'New Delhi' (text)
                                    const Text(
                                  'Membre depuis',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: const Color(0xff767676),
                                    letterSpacing: -0.09930800437927247,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(startFraction: 0.0, endFraction: 0.0),
                          Pin(size: 19.0, middle: 0.0),
                          child:
                              // Adobe XD layer: 'From' (text)
                              Text(
                            '${myName} ${myPrenoms}'.toUpperCase(),
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: const Color(0xff767676),
                              letterSpacing: -0.129100399017334,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  );
                  }
                  ),
                ),
                
                Pinned.fromPins(
                  Pin(size: 18.w, start: 5.w),
                  Pin(size: 12.h, start: 5.h),
                  child:
                      // Adobe XD layer: 'default_pp' (shape)
                      Container(
                        constraints: BoxConstraints(maxHeight: 4.h,maxWidth: 20.w),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/user.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],  
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: const Color(0xffe1bd07),

            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => XDAcceuil()));
            },
            child: const Icon(
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

        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                padding: const EdgeInsets.only(left: 28.0),
                icon: const Icon(Icons.credit_card_sharp),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => XDcardPagenew1()));
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: const EdgeInsets.only(right: 28.0),
                icon: const Icon(Icons.person),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contet) => UnderConstruct()));
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: const EdgeInsets.only(left: 28.0),
                icon: const Icon(Icons.headset_mic),
                onPressed: () {
                  _showSimpleModalDialog(context);
                },
              ),
              
              IconButton(
                iconSize: 30.0,
                padding: const EdgeInsets.only(right: 28.0),
                icon: const Icon(Icons.exit_to_app),
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

  


  _fetch_personal_data() async {
    try {
      final firebaseUser = await FirebaseAuth.instance.currentUser;
      if (firebaseUser != null) {
        final ds = await FirebaseFirestore.instance
            .collection('users')
            .doc(firebaseUser.uid)
            .get();
        if (ds.exists) {
          print(ds);
          final solde = ds.data()!['Nom'];
          final prenoms = ds.data()!['Prenoms'];
           myPrenoms=prenoms.toString();
          if (solde != null) {
            myName = solde.toString();

            print(mySolde);
          } else {
            print('The value for the "Name" field is null.');
          }
        } else {
          print('The document does not exist.');
        }
      }
    } catch (e) {
      print(e);
    }
  }
}

const String _svg_jfckv =
    '<svg viewBox="19.5 135.0 303.0 1.0" ><path transform="translate(19.5, 134.5)" d="M 0 0.5 L 303 0.5" fill="none" stroke="#e0e0e0" stroke-width="0.5" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ifw781 =
    '<svg viewBox="19.5 179.0 303.0 1.0" ><path transform="translate(19.5, 178.5)" d="M 0 0.5 L 303 0.5" fill="none" stroke="#e0e0e0" stroke-width="0.5" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_x2n1bj =
    '<svg viewBox="19.5 223.0 303.0 1.0" ><path transform="translate(19.5, 222.5)" d="M 0 0.5 L 303 0.5" fill="none" stroke="#e0e0e0" stroke-width="0.5" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
