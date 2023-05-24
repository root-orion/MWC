import 'package:flutter/material.dart';
import './xd_profil.dart';
import 'package:adobe_xd/page_link.dart';

class XDIconProfil extends StatelessWidget {
  XDIconProfil({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'icon_profil' (shape)
        PageLink(
          links: [
            PageLinkInfo(
              transition: LinkTransition.Fade,
              ease: Curves.linear,
              duration: 0.3,
              pageBuilder: () => XDProfil(),
            ),
          ],
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/icon_profil.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
