import 'dart:math';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nike_idee/models/models.dart';
import 'package:nike_idee/screens/screens.dart';
import 'package:nike_idee/settings/palette.dart';
import 'package:nike_idee/widgets/text_style.dart';
import 'package:nike_idee/widgets/widgets.dart';

class DetailScreen extends StatefulWidget {
  final ShoeModel shoeModel;
  DetailScreen(this.shoeModel);


  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final List<double> _shoeSIze =[
    20.0,
    45.0,
    44.0,
    42.0,
  ];



  List<double> _selectedSize= [];


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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          iconSize: 30.0,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(height: 20.0,),
                Column(
                  children: [
                    Stack(
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
                              tag: 'hero${widget.shoeModel.imgPath}',
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Transform.scale(
                                  scale: 1.1,
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
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0,),
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
                          SizedBox(height: 10.0,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width * 0.85,
                                child: MyText(
                                  color: Colors.white,
                                  label: '${widget.shoeModel.description}',
                                  sizeText: 15.0,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          SizedBox(height: 25.0,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width * 0.70,
                                child: MyText(
                                  color: Colors.white,
                                  label: 'Prix:',
                                  sizeText: 25.0,
                                  height: 1.4,
                                  fontWeight: FontWeight.w600,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Container(
                                width: size.width * 0.2,
                                child: MyText(
                                  color: Colors.white,
                                  label: '${widget.shoeModel.prix.toStringAsFixed(0)}  \$',
                                  sizeText: 25.0,
                                  height: 1.4,
                                  fontWeight: FontWeight.w900,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
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
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.25,
            minChildSize: 0.22,
            maxChildSize: 0.30,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.0),
                        topRight: Radius.circular(35.0)
                    ),
                    color: Palette.boxColor,
                    border: Border.all(
                      width: 0.8,
                      color: Palette.boxColor,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      )
                    ]
                ),
                child: ListView(
                  // physics: NeverScrollableScrollPhysics(),
                  controller: scrollController,
                  children: [
                    Center(
                      child: Container(
                        height: 8,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                           // color: Colors.white.withOpacity(0.2)
                          ),
                          width: size.width * 0.45,
                          height: size.width * 0.15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               MyText(
                                   label: 'Colors',
                                   sizeText: 20.0,
                                 color: Colors.white,
                                 fontWeight: FontWeight.w600,
                               ),
                              SizedBox(height: 8.0,),
                              Container(
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: size.width * 0.07,
                                      width: size.width * 0.07,
                                      decoration:BoxDecoration(
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                    SizedBox(width: 10.0,),
                                    Container(
                                      height: size.width * 0.07,
                                      width: size.width * 0.07,
                                      decoration:BoxDecoration(
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                    SizedBox(width: 10.0,),
                                    Container(
                                      height: size.width * 0.07,
                                      width: size.width * 0.07,
                                      decoration:BoxDecoration(
                                        color: Colors.yellowAccent,
                                      ),
                                    ),
                                    SizedBox(width: 10.0,),
                                    Container(
                                      height: size.width * 0.07,
                                      width: size.width * 0.07,
                                      decoration:BoxDecoration(
                                        color: Colors.tealAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                             // color: Colors.white.withOpacity(0.2)
                          ),
                          width: size.width * 0.45,
                          height: size.width * 0.17,
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              label: 'Size',
                              sizeText: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: 4.0,),
                            Expanded(
                              child: GridView.count(
                                childAspectRatio: 1.2,
                                crossAxisCount: 4,
                                mainAxisSpacing: 20.0,
                                padding: EdgeInsets.only(top: 1.0, right: 3.0),
                                children: _shoeSIze.map((shoeSize) {
                                  return GestureDetector(
                                    onTap: () {
                                      _selectedSize.clear();

                                      setState(() {
                                        _selectedSize.add(shoeSize);
                                      });

                                    },
                                    child: GridViewItem(shoeSize, _selectedSize.contains(shoeSize)),
                                  );
                                }).toList(),
                              ),
                            )
                          ]
                          ),
                        )


                      ],
                    ),
                    Container(
                      height: size.width * 0.1,
                      width: 0.3,
                      child: Divider(
                        thickness: 3.0,
                        height: 2.0,
                        color: Palette.blackColor,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ButtonOhneIcons(
                          onTap: (){},
                          label: 'Checkout',
                        color: Colors.white,
                        height: 50.0,
                        width: 50.0,
                      ),
                    )
                  ],

                ),
              );
            },
          ),
        ],
      )
    );
  }
}
