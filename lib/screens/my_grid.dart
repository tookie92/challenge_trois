import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_idee/screens/screens.dart';
import 'package:nike_idee/widgets/widgets.dart';

class GridScreen extends StatefulWidget {
  @override
  _GridScreenState createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {

  final List<double> _shoeSIze =[
    20.0,
    45.0,
    44.0,
    42.0,
    49.0,
    34.0,
    39.0,
    33.0,
    35.0,
    29.0,
    37.0,
    38.0,
  ];

  List<double> _selectedSize= [];

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 30.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 35.0,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                          child: Text(
                            'Save your Size',
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontSize: 25.0
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Text(
                        'Skip >',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 13.0
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0,),
                  Text(
                    'This will help us to understand how to make selectable grid',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 50.0,),

                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                            height: 400.0,
                            child:  GridView.count(
                              childAspectRatio: 1.2,
                              crossAxisCount: 6,
                              mainAxisSpacing: 20.0,
                              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
                            )
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.12,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: ButtonOhneIcons(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> NotificationScreen() )),
                      label: 'next',
                      schriftColor: Colors.black,
                      color: Colors.white,
                      height: 60.0,
                      width: 500.0,
                    ),
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
