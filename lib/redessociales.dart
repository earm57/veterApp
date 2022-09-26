import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class IconoRedes extends StatelessWidget {
  const IconoRedes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            icon: FaIcon(FontAwesomeIcons.facebook),
            onPressed: () {
              launchUrlString('https://www.facebook.com');
            }),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.twitter),
          onPressed: () {
            launchUrlString('https://www.twitter.com');
          },
        ),
        IconButton(
            icon: FaIcon(FontAwesomeIcons.instagramSquare),
            onPressed: () {
              launchUrlString('https://www.instagram.com');
            })
      ],
    ));
  }
}
