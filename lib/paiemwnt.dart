import 'package:cinetpay/cinetpay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class PagePaiement extends StatefulWidget {
  const PagePaiement({Key? key}) : super(key: key);

  @override
  State<PagePaiement> createState() => _PagePaiementState();
}

class _PagePaiementState extends State<PagePaiement> {
  final String apikey = '10609831246303d874a899c9.70960452';
  final String siteId='997451';
  @override
  Widget build(BuildContext context) {
    
    return  CinetPayCheckout(
    title: 'Validation du paiement',
    titleStyle: TextStyle(fontSize: 15.dp),
    titleBackgroundColor: Colors.red,
    configData: <String, dynamic> {
        'apikey': apikey,
        'site_id': siteId,
        'notify_url': 'YOUR_NOTIFY_URL'
    },
    paymentData: <String, dynamic> {
        'transaction_id': 'YOUR_TRANSACTION_ID',
        'amount': 200,
        'currency': 'XOF',
        'channels': 'ALL',
        'description': 'Rechargement My Wash Card'
    },
    waitResponse: (response) {
        print(response);
    },
    onError: (error) {
        print(error);
    }
);
  }
}