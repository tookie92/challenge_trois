import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:nike_idee/screens/screens.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds:5000 ),(){
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder: (_) => FeedScreen()));
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.black
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
                SizedBox(height: 20,),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
