import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class XDSolde extends StatefulWidget {
  XDSolde({
    Key? key,
  }) : super(key: key);

  @override
  State<XDSolde> createState() => _XDSoldeState();
}

class _XDSoldeState extends State<XDSolde> {
    double mySolde = 0;
  String myName='';
  String myPrenoms='';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 34.0, middle: 1.0),
          child: FutureBuilder(
              future: _fetch(),
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done)
                  return  Text("Chargement...", textAlign: TextAlign.center);
                return Text(
                  "${mySolde} FCFA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 25.dp,
                    color: const Color(0xffffffff),
                  ),
                );
              },
            ),
        ),
        const Align(
          alignment: Alignment(0.006, 0.0),
          child: SizedBox(
            width: 42.0,
            height: 15.0,
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
        ),
      ],
    );
  }
   _fetch() async {
    try {
      final firebaseUser = await FirebaseAuth.instance.currentUser;
      if (firebaseUser != null) {
        final ds = await FirebaseFirestore.instance
            .collection('users')
            .doc(firebaseUser.uid)
            .get();
        if (ds.exists) {
          final solde = ds.data()!['Solde'];
          if (solde != null) {
            mySolde = double.tryParse(solde.toString()) ?? 0;
            print(mySolde);
          } else {
            print('The value for the "Solde" field is null.');
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
