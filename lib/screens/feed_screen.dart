import 'dart:math';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nike_idee/models/data.dart';
import 'package:nike_idee/models/models.dart';
import 'package:nike_idee/widgets/widgets.dart';



class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop:() => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey[200],
          title: MyText(
            label: 'Challenge',
            color: Colors.black,
            sizeText: 20.0,
            fontWeight: FontWeight.w900,
          ),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Icon(MdiIcons.accountCircleOutline),
              color: Colors.black,
              onPressed: (){

              },
            )
          ],
        ),
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
              child: MyText(
                label: 'Welcome ${currentUser.nom}',
                sizeText: 18.0,
                fontWeight: FontWeight.normal,
                letterspacing: -1.2,
              ),
            ),
           SizedBox(
             height: size.height,
               child: _MaListe()
           ),
          ],
        )
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
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)
                            )
                          ]
                      ),
                      height: 600,
                      width: size.width * 0.9,
                    ),
                  ),
                  Positioned(
                    top: 10.0,
                    left: size.width * 0.2,
                    child: Transform.scale(
                      scale: value,
                      child: Opacity(
                       opacity: value,
                        child: Container(
                          height: 300,
                          width:250,
                          decoration: BoxDecoration(
                            color:  shoeModel.color,
                            shape: BoxShape.circle
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: size.width * 0.0,
                    child: Transform.translate(
                      offset: Offset(0,100 +(-value * 100)),
                      child: Opacity(
                        opacity: value,
                        child: Transform.rotate(
                          angle: pi/-4.9,
                          child: Container(
                            child: Image(
                              image: AssetImage('assets/images/${shoeModel.imgPath}'),
                              height: 400,
                              width: 300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
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

