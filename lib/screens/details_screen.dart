import 'dart:math';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nike_idee/models/models.dart';
import 'package:nike_idee/settings/palette.dart';
import 'package:nike_idee/widgets/text_style.dart';

class DetailScreen extends StatefulWidget {
  final ShoeModel shoeModel;
  DetailScreen(this.shoeModel);


  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Palette.boxColor
            ),
          ),
          Positioned(
            top: size.width * 0.5,
            right: 50.0,
            child: Container(
              height: 250.0,
              width: 400.0,
              child: Hero(
                tag: 'hero${widget.shoeModel.imgPath}',
                child: Transform.rotate(
                  angle: pi/-4.9,
                  child: Image(
                    image: AssetImage('assets/images/${widget.shoeModel.imgPath}'),
                    fit: BoxFit.cover,
                    width: 250,
                    height: 250,
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 500.0,
            left: 50.0,
            child:ClipOval(
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Palette.blackColor.withOpacity(0.2),
                ),
              ),
            )
          ),
          
          Positioned(
            top: size.height * 0.08,
            left: size.width * 0.05,
            child: MyText(
             label: '${widget.shoeModel.nom}',
              sizeText: 30.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),

          Positioned(
            bottom: size.height * 0.08,
            left: size.width * 0.05,
            child: IconButton(
              icon: Icon(MdiIcons.arrowBottomLeft),
              iconSize: 20.0,
              color: Colors.white,
              onPressed: ()=> Navigator.pop(context),
            )
          )

        ],
      ),
    );
  }
}
