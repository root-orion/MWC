import 'package:flutter/material.dart';

import 'package:adobe_xd/page_link.dart';

import 'x_dcard_pagenew1.dart';

class XDIconCard extends StatelessWidget {
  XDIconCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'icon_card' (shape)
        PageLink(
          links: [
            PageLinkInfo(
              transition: LinkTransition.Fade,
              ease: Curves.linear,
              duration: 0.3,
              pageBuilder: () => XDcardPagenew1(),
            ),
          ],
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/icon_card.png'),
                fit: BoxFit.fill,
              ),
            ),
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 1.0, 0.2),
          ),
        ),
      ],
    );
  }
}
