import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';


import 'xd_presentation.dart';

class XDOuverture extends StatefulWidget {
  XDOuverture({
    Key? key,
  }) : super(key: key);

  @override
  State<XDOuverture> createState() => _XDOuvertureState();
}

class _XDOuvertureState extends State<XDOuverture> {
  @override
  void initState() {
    super.initState();
    _goToPresentation();
  }

  _goToPresentation() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => XDPresentation()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfefc),
      body: Stack(
        children: <Widget>[
       
          Pinned.fromPins(
            Pin(start: 20.w+50.w-Device.width/2, end: 20.w+50.w-Device.width/2),
            Pin(size: 15.h, middle: 0.3),
            child:
                // Adobe XD layer: 'Logo' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 20.w, end: 20.w),
            Pin(size: 16.h, middle: 0.8),
            child:
                // Adobe XD layer: 'goutelogo' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logoforeste.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.014, 0.3),
            child: SizedBox(
              width: 15.w,
              height: 10.h,
              child: Text(
                'PAR',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20.dp,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: const Color(0xfffcfefc),
      //   focusColor: Colors.amberAccent,
      //   onPressed: (() {}),
      //   child: const CircularProgressIndicator(
      //     color:  Color.fromARGB(255, 255, 203, 46),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
