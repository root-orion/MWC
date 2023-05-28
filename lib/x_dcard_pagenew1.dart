import 'package:cinetpay/cinetpay.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:mywashcard/paiemwnt.dart';
import 'package:mywashcard/transacdetail.dart';
import 'package:mywashcard/xd_profil.dart';
import 'package:mywashcard/xd_resultat_recherche.dart';
import 'package:mywashcard/xd_solde.dart';
import './xd_bouton_rechargement.dart';
import './xd_bouton_lavage.dart';
import './xd_acceuil.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_icon_support.dart';
import './xd_icon_profil.dart';
import './xd_icon_card.dart';
import './x_d.dart';
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
  final String apikey = '138474062264281f6088c8e5.23841308';
  final String siteId = '540983';
  double mySolde = 0;
  String? _amount;
  final _amountContoller = TextEditingController();
  final _numberContoller = TextEditingController();
  String? _debitedno;
  final _formKey = GlobalKey<FormState>();
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
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Mes cartes',
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
                      PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.linear,
                            duration: 0.3,
                            pageBuilder: () => PagePaiement(),
                          ),
                        ],
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.orange),
                          ),

                          onPressed: () {
                            _showSimpleModalDialogRech(context);
                          },
                          child: Text(
                            "RECHARGER MA CARTE",
                            style: TextStyle(color: Colors.white),
                          ),
                          // color:  Color(0xffe1bd07),
                        ),
                        // XDBoutonRechargement(),
                      )
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
                      Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                      BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 80.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => XDResultatRecherche()));
            },
            child: const Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            // elevation: 5.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contet) => XDAcceuil()));
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

  _showSimpleModalDialogRech(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Form(
              key: _formKey,
              child: Container(
                constraints: BoxConstraints(maxHeight: 300, maxWidth: 45.w),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: _numberContoller,
                          onChanged: (valueno) {
                            setState(() {
                              _debitedno = valueno;
                            });
                          },
                          validator: ((debitedno) {
                            if (debitedno == null || debitedno.isEmpty) {
                              return 'Entrez un numéro a débiter svp';
                            }
                            if (debitedno.length < 10 || debitedno.length > 10) {
                              return 'Entrez un numéro valide';
                            }
            
                            return null;
                          }),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            label: Text('Numero a debiter'),
                            hintText: "0777949763",
                            hintStyle: TextStyle(fontSize: 10.0),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: _amountContoller,
                          onChanged: (valuea) {
                            setState(() {
                              _amount = valuea;
                            });
                          },
                          validator: ((amount) {
                            if (amount == null || amount.isEmpty) {
                              return 'Entrez un montant';
                            }
                            if (int.parse(amount) < 100) {
                              return 'Entrez un montant superieur a 200';
                            }
                            return null;
                          }),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            label: Text('Montant'),
                            hintText: "200",
                            hintStyle: TextStyle(fontSize: 10.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextButton(
                        child: const Text('Valider'),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.orange,
                          textStyle: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TransactionDetails(
                                          amount: _amount,
                                          debitedno: _debitedno,
                                        )));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
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
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "NOUS SOMMES OUVERT 24/24h 7/7j",
                      style: TextStyle(
                        color: Color(0xffe1bd07),
                      ),
                      textAlign: TextAlign.center,
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
                      padding: EdgeInsets.all(8.0),
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
