import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:mywashcard/constants.dart';
import './xd_champ_ville.dart';
import './xd_champ_quartier.dart';
import './xd_bouton_commencer_smalll.dart';
import './xd_acceuil.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:firebase_core/firebase_core.dart';

class XDConnexion extends StatefulWidget {
  XDConnexion({
    Key? key,
  }) : super(key: key);

  @override
  State<XDConnexion> createState() => _XDConnexionState();
}

class _XDConnexionState extends State<XDConnexion> {
  //initialisation de firebase --->

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
//fin initialisation de firebase --->

//Login function-->
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == "user-not-found") {
        print("No user found for that email");
      }
    }
    return user;
  }

  //End login function-->
  final _formKey = GlobalKey<FormState>();
  //Textfields Controllers------>
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //End Textfield Conttrollers----->

    //clik sur connecter
    clickonconect() async {
      if (_formKey.currentState!.validate()) {
        // on success, notify the parent widget

        User? user = await loginUsingEmailPassword(
            email: _emailController.text,
            password: _passwordController.text,
            context: context);
        print(user);
        if (user != null) {
          //nabigate to home
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => XDAcceuil()));
        }
      }
    }
    //fin clique sur connecter

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Stack( 
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            // Adobe XD layer: 'car-wash-and-detali…' (shape)
            Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/car-wash.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.05), BlendMode.dstIn),
                ),
              ),
              child: Column(
              children: [
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 20.h,
                      height: 10.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Logo.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'CONNEXION',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 25.dp,
                    color: const Color(0xffe1bd07),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(19.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xffe1bd07),
                          offset: Offset(0, 0),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextFormField(
                              enableSuggestions: true,
                              controller: _emailController,
                              decoration:
                                  const InputDecoration(label: Text('email :')),
                              validator: (text) {
                                RegExp regExp = new RegExp(emailPattern);
                                if (text == null || text.isEmpty) {
                                  return 'Ne peut être vide';
                                } else if (!regExp.hasMatch(text)) {
                                  return 'Entez une adresse email valide svp ';
                                }

                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextFormField(
                              obscureText:true,
                              controller: _passwordController,
                              decoration: const InputDecoration(
                                label: Text('Mot de passe :'),
                              ),
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Ne peut être vide';
                                }
                                return null;
                              },
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              clickonconect();

                              // Respond to button press
                            },
                            child: Text('SE CONNECTER'),
                          ),
                          SizedBox(
                            height: 20.0,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
              // margin: EdgeInsets.fromLTRB(-228.0, 1.0, -229.0, 0.0),
            ),
            

            // Pinned.fromPins(
            //   Pin(start: 10.w, end: 10.w),
            //   Pin(size: 5.h, end: 15.h),
            //   child: Text(
            //     'Mot de passe oublié ?',
            //     style: TextStyle(
            //       fontFamily: 'Montserrat',
            //       fontSize: 20.sp,
            //       color: const Color(0xffe1bd07),
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
