import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nike_idee/screens/first.dart';
import 'package:nike_idee/settings/palette.dart';
import 'package:nike_idee/widgets/widgets.dart';



class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/logo_deux.png'),
                height: 80,
              ),
              SizedBox(height: 10.0,),
              Text('Your Account for\n everything Niike'.toUpperCase(),
              style: GoogleFonts.oswald(
                fontWeight: FontWeight.w900,
                fontSize: 23.0,
                letterSpacing: 1.2
              ),
              ),
              SizedBox(height: 10.0,),
              MyTextField(
                hintText: 'Email',
                initialValue: 'Our Business',
              ),
              SizedBox(height: 0.0,),
              MyTextField(
                hintText: 'Password',
                initialValue: '******',
              ),
              SizedBox(height: 0.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 210.0),
                        Expanded(
                          child: Text('Forgotten your password ?',
                            style: GoogleFonts.nunito(
                                 color: Colors.grey[600],
                              fontSize: 12.0

                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 100.0),
                        Expanded(
                            child: Text(
                                'By logging in, you are accepting the tems of tralala',
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey[600],
                                  fontSize: 13.0,
                              ),
                              textAlign: TextAlign.center,
                            )
                        ),
                      ],
                    ),

                    ButtonOhneIcons(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => FirstScreen())),
                      height: 60.0,
                      width: 400.0,
                      color: Colors.black,
                      schriftColor: Colors.white,
                      size: 20.0,
                      label: 'Login',
                    ),
                    SizedBox(height: 20.0,),
                    Builder(
                      builder: (context) =>
                       ButtonMitIcons(
                        onTap: (){
                          final snackBar = SnackBar(
                            backgroundColor: Palette.facebookColor,
                            duration: Duration(seconds: 3),
                            content: Text('Facebook login hahaha',
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontSize: 30.0
                              ),),

                          );
                          Scaffold.of(context).showSnackBar(snackBar);
                        },
                          icon: Icon(
                            MdiIcons.facebook,
                            color: Colors.white,
                          ),
                          label: 'Log in with Facebook',
                        height: 60.0,
                        width: 400.0,
                        schriftColor: Colors.white,
                        color: Palette.facebookColor,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
