import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final String initialValue;


  const MyTextField({
    Key key,
    this.hintText,
    this.initialValue,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [

         TextField(
           decoration: InputDecoration(
             fillColor: Colors.grey[200],
             filled: true,
             hintText: hintText,

             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(1.0),
               borderSide: BorderSide(
                 width: 1.0,
                 color: Colors.grey[400]
               )
             ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1.0),
              borderSide: BorderSide(
                width: 1.0,
                color: Colors.grey[400]
              ),
            ),
             focusedBorder:  OutlineInputBorder(
               borderRadius: BorderRadius.circular(1.0),
               borderSide: BorderSide(
                   width: 1.0,
                   color: Colors.grey[400]
               ),
             )
           ),
         ),
       ],

      ),
    );
  }
}
