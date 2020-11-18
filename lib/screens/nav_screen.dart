import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nike_idee/screens/feed_screen.dart';
import 'package:nike_idee/screens/screens.dart';
import 'package:nike_idee/settings/palette.dart';
import 'package:nike_idee/widgets/widgets.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    FeedScreen(),
    Scaffold(),
    Scaffold(),
  ];
void _onItemTapped(int index){
  setState(() {
    _selectedIndex = index;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Palette.blackColor,
        title: MyText(
          label: 'Challenge',
          color: Colors.white,
          sizeText: 20.0,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
            icon: Icon(MdiIcons.accountCircle, color: Colors.white,),
            splashColor: Palette.boxColor,
            splashRadius: 20.2,
            onPressed: (){

            },
          ),
          IconButton(
            icon: Icon(MdiIcons.shopping, color: Colors.white,),
            splashColor: Palette.boxColor,
            splashRadius: 20.2,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> CheckoutScreen()));
            },
          )
        ],
      ),
      body: WillPopScope(
        onWillPop: ()=> Future.value(false),
        child: DefaultTabController(
          length: _screens.length,
          child: IndexedStack(
            children: [
          _screens.elementAt(_selectedIndex),
            ],

          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined,),
            label: 'Stories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school,),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Palette.boxColor,
        selectedItemColor: Colors.amber[800],
        backgroundColor: Palette.blackColor,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );

  }
}
