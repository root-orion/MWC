import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:mywashcard/xd_acceuil.dart';
import 'package:mywashcard/xd_ouverture.dart';
import 'package:mywashcard/xd_presentation.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  //initialisation de firebase --->
 
  Future <FirebaseApp> _initializeFirebase() async {

    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
//fin initialisation de firebase --->
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (context, orientation, deviceType) {
       return MaterialApp(
      title: 'My Wash Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: 
      FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot){ 
          if(snapshot.connectionState==ConnectionState.done){  
            return XDOuverture();
          }
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        },
        ),
    );
    }
 );
  }
}
