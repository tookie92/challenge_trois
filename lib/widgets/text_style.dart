import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String label;
  final double sizeText;
  final FontWeight fontWeight;
  final Color color;
  final TextOverflow overflow;
  final double letterspacing;
  final double height;

  const MyText({Key key,
    @required this.label,
   @required this.sizeText,
    this.fontWeight,
    this.color,
    this.overflow,
    this.letterspacing,
    this.height
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      label,
    style: GoogleFonts.montserrat(
      fontSize: sizeText,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterspacing,
      height: height,
  ),
      overflow: overflow,
    );
  }
}
