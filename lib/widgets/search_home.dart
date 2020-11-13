import 'package:flutter/material.dart';
import 'package:nike_idee/settings/settings.dart';

class SearchHome extends StatelessWidget {
  final String hintext;

  const SearchHome({Key key,@required this.hintext}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Palette.boxColor,
            filled: true,
            hintText: hintext,
            prefixIcon: Icon(Icons.search,color: Palette.blackColor,),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                    width: 1.0,
                    color: Palette.boxColor
                )
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                  width: 1.0,
                  color: Palette.boxColor
              ),
            ),
            focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                  width: 1.0,
                  color: Palette.boxColor
              ),
            )

        ),
      ),
    );
  }
}
