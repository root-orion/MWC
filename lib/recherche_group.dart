import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywashcard/xd_bouton_recherche.dart';
import 'package:mywashcard/xd_champ_quartier.dart';
import 'package:mywashcard/xd_champ_ville.dart';
import 'package:mywashcard/xd_resultat_recherche.dart';

class RechercheGroup extends StatefulWidget {
  const RechercheGroup({super.key});

  @override
  State<RechercheGroup> createState() => _RechercheGroupState();
}

class _RechercheGroupState extends State<RechercheGroup> {
  @override
  Widget build(BuildContext context) {
    return Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfffcfcfc),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 0),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
               
                Pinned.fromPins(
                  Pin(size: 65.0, end: 17.0),
                  Pin(start: 31.0, end: 32.0),
                  child:
                      // Adobe XD layer: 'Bouton recherche' (component)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDResultatRecherche(),
                      ),
                    ],
                    child: XDBoutonRecherche(),
                  ),
                ),
              ],
            );
  }
}