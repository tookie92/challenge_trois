import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nike_idee/screens/screens.dart';
import 'package:nike_idee/models/models.dart';
import 'package:nike_idee/settings/palette.dart';
import 'package:nike_idee/widgets/text_style.dart';

class CheckoutScreen extends StatefulWidget {

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> with SingleTickerProviderStateMixin {
  bool _isDone = false;
  AnimationController _controller;
  Tween<double> _tween = Tween(begin: 01.0,end: 0.75);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    )..forward();


    Future.delayed(Duration(milliseconds: 1000),(){
      setState(() {
        _isDone = true;
      });
      if(_isDone = true ){
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.blackColor,
        elevation: 0.1,
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: MyText(
                  label: '${currentUser.nom}',
                  sizeText: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: size.height * 0.55,
                  child: ListView.builder(
                    itemCount: lastOrder.shoes.length,
                    itemBuilder: (BuildContext context, int index){
                      final ShoeModel shoeModel = lastOrder.shoes[index];

                      return AnimatedBuilder(
                        animation: _controller,
                        builder: (context, Widget child){



                          return Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                                child: Container(
                                  height:size.width * 0.3,
                                  width: size.width * 1.0,
                                  decoration: BoxDecoration(
                                      color: Palette.boxColor,
                                      borderRadius: BorderRadius.circular(20.0)
                                  ),
                                ),
                              ),
                              Positioned(
                                top:size.width * 0.08,
                                left:size.width * 0.09,
                                child: MyText(
                                  label: '${shoeModel.nom}',
                                  color: Colors.white,
                                  sizeText: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              Positioned(
                                top:size.width * 0.16,
                                left:size.width * 0.09,
                                child: Container(
                                  width: 150.0,
                                  child: MyText(
                                    label: '${shoeModel.description} \$ ',
                                    color: Colors.white,
                                    sizeText: 15.0,
                                    fontWeight: FontWeight.normal,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),

                              Positioned(
                                top:size.width * 0.24,
                                left:size.width * 0.09,
                                child: MyText(
                                  label: '${shoeModel.prix.toStringAsFixed(0)} \$ ',
                                  color: Colors.white,
                                  sizeText: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),



                              Positioned(
                                  bottom:size.width * 0.04,
                                  right:size.width * 0.0,
                                  child: Transform.rotate(
                                    angle:pi/-9.9,
                                    child: Container(
                                      child: ScaleTransition(
                                        scale: _tween.animate(CurvedAnimation(parent: _controller,curve: Curves.easeInCubic)),
                                       //turns: CurvedAnimation(parent: _controller,curve: Curves.elasticInOut),
                                        child: Image(
                                          image: AssetImage('assets/images/${shoeModel.imgPath}'),
                                          height: 190.0,
                                          width: 190.0,
                                        ),
                                      ),
                                    ),
                                  )
                              ),



                            ],
                          );
                        },


                      );
                    },
                  ),
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Divider(
                thickness: 2.0,
                color: Palette.boxColor,
              )
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: MyText(
                      color: Colors.white,
                      label: 'Prix:',
                      sizeText: 25.0,
                      fontWeight: FontWeight.w600,
                    )
                ),

                Container(
                    child: MyText(
                      color: Colors.white,
                      label: '600 \$',
                      sizeText: 25.0,
                      fontWeight: FontWeight.w600,
                    )
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
