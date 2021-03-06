import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nike_idee/models/data.dart';
import 'package:nike_idee/models/models.dart';
import 'package:nike_idee/screens/screens.dart';
import 'package:nike_idee/settings/palette.dart';
import 'package:nike_idee/widgets/widgets.dart';



class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.blackColor ,
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
         SearchHome(
           hintext: 'search',
         ),
          SizedBox(height: 5.0,),
          ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                  height: size.height * 0.6,
                  child: _MaListe()
              ),


            ],
          ),
          SizedBox(height: 20.0,),


        ],
      ),

    );
  }
}



class _MaListe extends StatefulWidget {


  @override
  __MaListeState createState() => __MaListeState();
}

class __MaListeState extends State<_MaListe> {
  PageController pageController;
  int currentPage = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(
        viewportFraction: 1.0,
      initialPage: currentPage,
      keepPage: false
    );
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return PageView.builder(
      controller: pageController,
      pageSnapping: true,
      onPageChanged: _onPageChanged,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: currentUser.shoes.length,
      itemBuilder: ((BuildContext context, int index){

        ShoeModel shoeModel = currentUser.shoes[index];

        return AnimatedBuilder(
          animation: pageController,
          builder: (context, child){
            double value = 1;

            if(pageController.position.haveDimensions){
              value= pageController.page - index;
              value= (1 - (value.abs())).clamp(0.0, 1.0);
            }
            return Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>   DetailScreen(shoeModel))),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Palette.boxColor,
                            borderRadius: BorderRadius.circular(30.0),
                        ),
                        height: size.height * 0.6,
                        width: size.width * 0.9,
                      ),
                    ),

                    Positioned(
                      left: size.width* 0.07,
                      top: size.height * 0.02,
                      child: Container(
                        height: 400,
                        width: size.width * 0.9,
                        child: MyText(
                          label: 'Nike \nAir'.toUpperCase(),
                          sizeText:Curves.slowMiddle.transform(value)* 80.0,
                          color: Colors.white.withOpacity(0.2),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: size.height * 0.07,
                      right: size.width * 0.1,
                      child: Hero(
                        tag: 'hero${shoeModel.imgPath}',
                        child: Transform.translate(
                          offset: Offset(0,100 +(-value * 100)),
                          child: Opacity(
                            opacity: value,
                            child: Transform.rotate(
                              angle: pi/-4.9,
                              child: Container(
                                height: 400,
                                width: size.width * 0.9,
                                child: Image(
                                  image: AssetImage('assets/images/${shoeModel.imgPath}'),
                                  height: 300,
                                  width: 300,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: size.width* 0.10,
                      top: size.height * 0.50,
                      child: Container(
                        height: 400,
                        width: size.width * 0.9,
                        child: MyText(
                          label: 'Brand: \n${shoeModel.nom}',
                          sizeText: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          height: 1.5,
                        ),
                      ),
                    ),


                    Positioned(
                      right: size.width* 0.022,
                      top: size.height * 0.50,
                      child: Container(
                        height: 70,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)
                          ),
                            color: shoeModel.color
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width* 0.64,
                      top: size.height * 0.52,
                      child: Container(
                        height: 400,
                        width: size.width * 0.9,
                        child: MyText(
                          label: '${shoeModel.prix.toStringAsFixed(0)}\$',
                          sizeText: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },

        );

      }),
    );
  }
  
  _onPageChanged(int index){
    setState(() {
      currentPage = index;
    });
  }

}

