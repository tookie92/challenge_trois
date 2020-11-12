import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nike_idee/widgets/widgets.dart';
import 'package:nike_idee/screens/screens.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                CircleIcon(icon: MdiIcons.inbox,addOther: true,),
                SizedBox(height: 30,),
                Text(
                  'Don\'t miss out',
                  style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontSize: 20.0
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'In order to personnalize your app experience, we want to get to know you better..',
                    style: GoogleFonts.montserrat(
                        color: Colors.grey[200],
                        fontSize: 15.0,
                        fontWeight: FontWeight.w100,
                        letterSpacing: 1.2
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.35,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: ButtonOhneIcons(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> LocationScreen())),
                    label: 'Next',
                    schriftColor: Colors.black,
                    color: Colors.white,
                    height: 60.0,
                    width: 300.0,
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
