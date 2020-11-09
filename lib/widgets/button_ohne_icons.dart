import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonOhneIcons extends StatelessWidget {

  final double height, width;
  final Color color;
  final Color schriftColor;
  final double size;
  final String label;
  final Function onTap;

  const ButtonOhneIcons({Key key,
    this.height,
    this.width,
    this.schriftColor,
    this.color,
    this.size,
    @required this.onTap,
    @required this.label,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 90.0),
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: color
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Icon(MdiIcons.facebook,color: Colors.black,),
              SizedBox(width: size,),
              Expanded(
                child: Center(
                  child: Text(
                    label.toUpperCase(),
                    style: GoogleFonts.oswald(
                        color: schriftColor,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
