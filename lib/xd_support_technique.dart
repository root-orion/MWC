import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDSupportTechnique extends StatelessWidget {
  XDSupportTechnique({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
              child: SvgPicture.string(
            _svg_qr2abw,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          )),
          Pinned.fromPins(
            Pin(start: 15.0, end: 15.0),
            Pin(size: 236.0, middle: 0.5008),
            child:
                // Adobe XD layer: 'Support' (group)
                Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfffcfcfc),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 37.0, end: 44.0),
                  Pin(size: 48.0, middle: 0.2287),
                  child: Text(
                    'NOUS SOMMES DIPONIBLE\n24h/24h et 7j/7j ',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      color: const Color(0xffe1bd07),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 254.1, start: 50.9),
                  Pin(size: 50.2, middle: 0.7374),
                  child:
                      // Adobe XD layer: 'Contact' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 18.3, start: 3.0),
                        Pin(size: 18.3, start: 0.5),
                        child:
                            // Adobe XD layer: 'phone' (shape)
                            SvgPicture.string(
                          _svg_ebe92,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: 24.0,
                          height: 19.0,
                          child:
                              // Adobe XD layer: 'mail' (shape)
                              SvgPicture.string(
                            _svg_pva6rf,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 37.1, end: 0.0),
                        Pin(size: 19.0, end: 0.2),
                        child: Text(
                          'contact@mywashcard.com',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: const Color(0xff292929),
                            fontWeight: FontWeight.w300,
                          ),
                          softWrap: false,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 158.0, start: 34.1),
                        Pin(size: 19.0, start: 0.0),
                        child: Text(
                          '+225 00 00 000 000',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: const Color(0xff292929),
                            fontWeight: FontWeight.w300,
                          ),
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ebe92 =
    '<svg viewBox="3.0 0.8 18.3 18.3" ><path transform="translate(3.05, 0.8)" d="M 18.00276374816895 15.1807222366333 L 15.42862510681152 17.73407363891602 C 15.04878997802734 18.12354278564453 14.54521942138672 18.25590133666992 14.05483436584473 18.25640678405762 C 11.88588333129883 18.19149780273438 9.835596084594727 17.12603378295898 8.1524658203125 16.03217697143555 C 5.389169692993164 14.02195262908936 2.853570222854614 11.52945613861084 1.26273512840271 8.517162322998047 C 0.6521627306938171 7.253923892974854 -0.06389056891202927 5.642294883728027 0.004570621531456709 4.232499122619629 C 0.01065605971962214 3.702051639556885 0.1536638736724854 3.181746244430542 0.5269041061401367 2.839946746826172 L 3.101044654846191 0.2673251330852509 C 3.635548830032349 -0.1870548129081726 4.152304172515869 -0.03035459294915199 4.494609832763672 0.499586284160614 L 6.565180778503418 4.42621898651123 C 6.783243179321289 4.89124870300293 6.657983779907227 5.389748096466064 6.332919597625732 5.722419261932373 L 5.384605884552002 6.670227527618408 C 5.326287269592285 6.75035285949707 5.288759708404541 6.841634273529053 5.287746429443359 6.941030025482178 C 5.651350975036621 8.348797798156738 6.752814769744873 9.646011352539062 7.725977897644043 10.53905010223389 C 8.699141502380371 11.43208694458008 9.745329856872559 12.64157009124756 11.10289001464844 12.92809295654297 C 11.2707462310791 12.97474765777588 11.47613143920898 12.99148368835449 11.59631824493408 12.87991714477539 L 12.69930267333984 11.75816822052002 C 13.07964324951172 11.47012233734131 13.6288537979126 11.32914257049561 14.03454971313477 11.56495475769043 L 14.05382061004639 11.56495475769043 L 17.78875923156738 13.76991367340088 C 18.33695602416992 14.11374092102051 18.39426040649414 14.77806949615479 18.00174903869629 15.18173694610596 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pva6rf =
    '<svg viewBox="0.0 31.3 24.4 19.1" ><path transform="translate(-2.25, 25.72)" d="M 23.55696487426758 5.624999523162842 L 5.294183731079102 5.624999523162842 C 3.613634347915649 5.626705169677734 2.251705408096313 6.988635540008545 2.250000476837158 8.669186592102051 L 2.250000238418579 21.71404266357422 C 2.251705408096313 23.39459419250488 3.613634824752808 24.75652503967285 5.294183731079102 24.75823020935059 L 23.55696487426758 24.75823020935059 C 25.23751640319824 24.75652503967285 26.59944534301758 23.39459419250488 26.60114860534668 21.71404266357422 L 26.60114669799805 8.669186592102051 C 26.59944534301758 6.98863410949707 25.23751640319824 5.626702785491943 23.55696487426758 5.625000476837158 Z M 22.7862548828125 10.65973472595215 L 14.95934963226318 16.74733543395996 C 14.64536190032959 16.9914436340332 14.20578575134277 16.9914436340332 13.89179801940918 16.74733352661133 L 6.064891338348389 10.65973472595215 C 5.685671806335449 10.3649845123291 5.617310047149658 9.818607330322266 5.912139892578125 9.439448356628418 C 6.206969738006592 9.06028938293457 6.753345489501953 8.991927146911621 7.132503986358643 9.286757469177246 L 14.42518901824951 14.95932006835938 L 21.71870613098145 9.286836624145508 C 22.09780311584473 8.991927146911621 22.64417839050293 9.06028938293457 22.93900680541992 9.439448356628418 C 23.23383903503418 9.818607330322266 23.16547393798828 10.3649845123291 22.78631591796875 10.65981483459473 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qr2abw =
    '<svg viewBox="0.0 0.0 393.0 851.0" ><path  d="M 0 0 L 393 0 L 393 851 L 0 851 L 0 0 Z" fill="#000000" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
