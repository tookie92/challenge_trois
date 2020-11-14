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
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.1,
        title: MyText(
          label: '${widget.shoeModel.nom}',
          sizeText: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        backgroundColor: Palette.blackColor,
        leading:IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: (){
            Navigator.pop(context);
          },
        )
      ),
      body: ListView(
        children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 400.0,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Palette.boxColor.withOpacity(0.0)
                      ),
                    ),
                    Positioned(
                      child: Container(
                        height: 400.0,
                        width: 150.0,
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
                        height: 400.0,
                        width: 150.0,
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
                      top: size.height * 0.0,
                      child: Hero(
                        tag: 'hero${widget.shoeModel.imgPath}',
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Transform.rotate(
                            angle: pi/-4.9,
                            child: Image(
                              image: AssetImage('assets/images/${widget.shoeModel.imgPath}'),
                              fit: BoxFit.cover,
                              height: 400.0,
                              width: 400.0,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            color: Colors.white,
                              label: 'Description',
                              sizeText: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 370,
                            child: MyText(
                              color: Colors.white,
                              label: '${widget.shoeModel.description}',
                              sizeText: 15.0,
                              height: 1.2,
                              fontWeight: FontWeight.normal,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

              ],
            ),
        ],
      )
    );
  }
}
