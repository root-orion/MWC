import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class XDcarte extends StatefulWidget {
  XDcarte({
    Key? key,
  }) : super(key: key);

  @override
  State<XDcarte> createState() => _XDcarteState();
}

class _XDcarteState extends State<XDcarte> {

  double mySolde = 0;
  String myName='';
  String myPrenoms='';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'mywashcard_recto' (shape)
        Container(
          
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: const AssetImage('assets/images/carte.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Pinned.fromPins(

          Pin(size:30.w, start: 5.w),
          Pin(size: 30.w, start: 7.w),
          child:
              // Adobe XD layer: 'qr' (shape)
              Container(
                width:100.0.w,
                height:100.0.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/qrcode.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(start: 50.w, end: 7.0),
          Pin(size: 18.0, middle: 0.5535),
          child: Text(
            '4292 86',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              color: const Color(0xff000000),
              letterSpacing: 7.7700000000000005,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 192.0, start: 22.0),
          Pin(size: 24.0, end: 19.0),
          child: FutureBuilder(
            future: _fetch_personal_data(),
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done)
                  return Text("Chargement...", textAlign: TextAlign.center);
                  return Text(
              '${myName} ${myPrenoms}'.toUpperCase(),
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15.0,
                color: const Color(0xff000000),
              ),
              softWrap: false,
            );}
          ),
        ),
        Align(
          alignment: Alignment(0.45, 0.8),
          child: SizedBox(
            width: 35.0,
            height: 18.0,
            child: Text(
              '12/22',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              softWrap: false,
            ),
          ),
        ),
      ],
    );
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
