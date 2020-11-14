import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:nike_idee/screens/screens.dart';
import 'package:nike_idee/settings/palette.dart';
import 'package:nike_idee/widgets/text_style.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool isSave = false;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds:5000 ),(){
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder: (_) => NavScreen()));
      });
    });
    Future.delayed(Duration(milliseconds:2000 ),(){
      setState(() {
       isSave = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Palette.blackColor
        ),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(height: 180,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                SizedBox(
                  height: 350.0,
                  child: FlareActor(
                    'assets/images/loaading.flr',
                    fit: BoxFit.contain,
                    animation: "Untitled",
                    alignment: Alignment.center ,
                  ),
                ),
                SizedBox(height: 15.0,),
                AnimatedOpacity(
                  duration: Duration(milliseconds: 3200),
                  opacity: isSave? 1.0: 0.0,
                  child: MyText(
                    label: 'loading blablabla',
                    sizeText: 13.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
