import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cinetpay/cinetpay.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:mywashcard/xd_acceuil.dart';

import 'package:uuid/uuid.dart';
import 'package:http/http.dart';

class TransactionDetails extends StatefulWidget {
 
  late final String? debitedno;
  
  late final String? amount;

  TransactionDetails(
      {Key? key,
    
      required this.amount,
      required this.debitedno})
      : super(key: key);

  @override
  State<TransactionDetails> createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails>
    with TickerProviderStateMixin {
  
  String? debitedno="";
   double mySolde = 0;
  String? amount="";
  double? to_receive;
  
  
  final String apikey = '138474062264281f6088c8e5.23841308';
  final String siteId = '540983';
  final authUrl = 'https://client.cinetpay.com/v1/auth/login';
  late var addCliData = [];
  var uuid = Uuid();
  String? transactionID;
  bool success = false;

  //final String transactionId = Random().nextInt(100000000).toString();

  @override
  void initState() {

    // TODO: implement initState
    super.initState();

    setState(() {
      
      amount = widget.amount;
      debitedno = widget.debitedno;
      to_receive=  int.parse(widget.amount!) - ((int.parse(widget.amount!) * 10) / 100) ;
      addCliData = [
        {
          "prefix": "225",
          "phone": debitedno.toString(),
          "name": "Test A",
          "surname": "Test B",
          "email": "testa@exemple.com"
        },
        /*{
              "prefix": "225",
              "phone": "01020304",
              "name": "Test C",
              "surname": "Test D",
              "email": "testb@exemple.com"
            }*/
      ];
    });
    

  }

//================================================================================
//================================================================================
  void doTransaction() async {
    final authRequest = await post(
      Uri.parse(authUrl),
      body: {"apikey": apikey, "password": "Bonjour@2020"},
      headers: {"Content-Type": "application/x-www-form-urlencoded"},
    );
    final authResponse = jsonDecode(authRequest.body);
    print(authResponse["message"]);
    //
    //
    if (authResponse["message"] == "OPERATION_SUCCES") {
      //recuperation d'un token 
      final String token = authResponse["data"]["token"];

      //ajout du client
      final addCliUrl =
          "https://client.cinetpay.com/v1/transfer/contact?token=${token}";
      final addCliRequest = await post(
        Uri.parse(addCliUrl),
        body: {"data": jsonEncode(addCliData)},
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      );

      final addCliResponse = jsonDecode(addCliRequest.body);
      //
      //print(addCliResponse);
      if (addCliResponse["message"] == "OPERATION_SUCCES") {
        print(addCliResponse['message']);
        //ONn Credite le solde
         await updateSolde(to_receive!);
      } else {
        print("add cli error");
        setState(() {
          success = false;
        });
      }
    } else {
      print("auth error");
      setState(() {
        success = false;
      });
    }
  }
  //===========================================================================
  //===========================================================================

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details de la transaction'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SizedBox(
                height: 20.h,
              ),
              const Text(
                'Montant du Rechargement:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.greenAccent,
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: Center(
                    child: Text(
                      '${amount!} CFA',
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
               const SizedBox(
                height: 20,
              ),
             const Text(
                      'A recevoir',
                     
                      textAlign: TextAlign.center,
                    ),
                       Text(
                      '${to_receive!}',
                     
                      textAlign: TextAlign.center,
                    ),
              const SizedBox(
                height: 50,
              ),
               const Icon(
                Icons.arrow_downward_outlined,
                size: 80,
                color: Colors.green,
              ),
                const Text(
                      'Numero a Debiter',
                     
                      textAlign: TextAlign.center,
                    ),
             
              Text('(${debitedno!})'),
              /*AnimatedIcon(
                icon: AnimatedIcons.add_event,
                progress: _animationController,
                semanticLabel: 'Show menu',
              ),*/
               const SizedBox(
                height: 50,
              ),
              
             
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextButton(
                  onPressed: () async {
                    setState(() {
                      transactionID == uuid.v1();
                    });
                    await Get.to(
                      () => CinetPayCheckout(
                          title: 'Validation du paiement',
                          configData: <String, dynamic>{
                            'apikey': apikey,
                            'site_id': siteId,
                            'notify_url': 'https://mywashcards.com'
                          },
                          paymentData: <String, dynamic>{
                            'transaction_id': new DateTime.now()
                                .millisecondsSinceEpoch
                                .toString(),
                            'amount': amount,
                            'currency': 'XOF',
                            'channels': 'ALL',
                            'description': 'Rechargement de carte'
                          },
                          waitResponse: (response) {
                            if (mounted) {
                              print(response);
                              doTransaction();

                              setState(() {
                                Get.back();
                              });
                              if (success == true) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Succes')));
                              } else if (success == false) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Echec transaction')));
                              }
                            }
                          },
                          onError: (error) {
                            if (mounted) {
                              print('error');
                              setState(() {
                                Get.back();
                              });
                            }
                          }),
                    );
                  },
                  child: const Text('Valider'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.orange,
                    textStyle: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>XDAcceuil()));
                   
                  },
                  child: const Text('Annuler'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.red,
                    textStyle: const TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
Future<void> updateSolde(double valueToAdd) async {
  try {
    final firebaseUser = await FirebaseAuth.instance.currentUser;
    if (firebaseUser != null) {
      final userRef = FirebaseFirestore.instance.collection('users').doc(firebaseUser.uid);
      final doc = await userRef.get();
      if (doc.exists) {
        final oldSolde = doc.data()!['Solde'] ?? 0.0;
        final newSolde = oldSolde + valueToAdd;
        await userRef.update({'Solde': newSolde});
        print('Solde updated successfully. New solde: $newSolde');
      } else {
        print('The document does not exist.');
      }
    } else {
      print('User not authenticated.');
    }
  } catch (e) {
    print('Error updating solde: $e');
  }
}




}
