import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class ButtonMitIcons extends StatelessWidget {

  final double height, width;
  final Color color;
  final String label;
  final Color schriftColor;
  final Icon icon;
  final Function onTap;


  const ButtonMitIcons({Key key,
    this.height,
    this.width,
    this.color,
    this.schriftColor,
    @required this.onTap,
    @required this.icon,
    @required this.label,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: color
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             icon,
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
