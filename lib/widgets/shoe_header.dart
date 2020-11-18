import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nike_idee/settings/settings.dart';



class ShoeHeader extends StatelessWidget {
  final String route;
  final String nameroute;

  const ShoeHeader({
    Key key,
    @required this.route,
    @required this.nameroute
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.width * 0.75,
          width: size.width * 1.0,
          decoration: BoxDecoration(
              color: Palette.boxColor.withOpacity(0.1)
          ),
        ),
        Positioned(
          child: Container(
            height: size.width * 0.7,
            width: size.width * 0.35,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover
              ),
              //color: Palette.boxColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            height: size.width * 0.7,
            width: size.width * 0.35,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Palette.boxColor.withOpacity(0.3),
                  Palette.blackColor.withOpacity(0.6),
                ],
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
          ),
        ),
        Positioned(
          right: size.width * 0.1,
          top: size.width * 0.0,
          bottom: size.width * 0.1,
          child: Container(
            height: size.width * 0.7,
            width: size.width * 0.75,
            child: Hero(
              tag: route,
              child: Align(
                alignment: Alignment.topCenter,
                child: Transform.scale(
                  scale: 1.0,
                  child: Transform.rotate(
                    angle: pi/-4.9,
                    child: Image(
                      image: AssetImage(nameroute),
                      fit: BoxFit.cover,
                      height: 400.0,
                      width: 400.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
