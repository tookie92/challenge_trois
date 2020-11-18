import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nike_idee/settings/settings.dart';
import 'package:nike_idee/widgets/button_mit_icons.dart';
import 'screens.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

   bool _isLit = false;
   bool _isText = false;


   @override
   void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        _isLit = true;

      });
    });
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _duration = Duration(milliseconds: 3000);

    return Scaffold(
      body: Stack(
        children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Palette.blackColor,
              ),
            ),

         AnimatedPositioned(
            duration: _duration,
            curve: Curves.bounceOut,
            top:_isLit? size.height * 0.22 : size.height * 0.20,
            onEnd: (){
              setState(() {
                _isText = true;
              });
            },
            left: size.height *  0.10 ,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent
              ),
              child: Text(
                'Reserved\nfor you'.toUpperCase(),
                style: GoogleFonts.oswald(
                  fontSize: 60.0,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w900
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          Positioned(
            child: Align(
              alignment: Alignment.center,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1000),
                opacity: _isLit? 1.0: 0.5,
                child: Image(
                  image: AssetImage('assets/images/intro.png'),
                  height: 250,
                  width: 250,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: size.height * 0.20,
            left: size.height * 0.06,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 500),
              opacity: _isText? 1.0 : 0.0,
              child: Container(
                width: 300,
                child: Text(
                  'This is just a way for me\n to pratice.. Lol',
                  style: GoogleFonts.oswald(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: size.height * 0.09,
            left: size.height * 0.07,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 500),
              opacity: _isText? 1.0 : 0.0,
              child: ButtonMitIcons(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> SignUp())),
                label: 'Login',
                height: 60.0,
                width: 300.0,
                color: Colors.white,
                icon: Icon(MdiIcons.accountBox),
              )
            )
          )
        ],
      ),
    );
  }
}
