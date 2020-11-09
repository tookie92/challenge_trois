import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final bool add;

  const CircleIcon({Key key,
    this.icon,
    this.add = false
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
            height: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                    width: 1.0,
                    color: Colors.white
                )
            ),
            child: Align(
              alignment: Alignment.center,
              child: Icon(icon, color: Colors.white, size: 40.0,)
            )
        ),
       add? Positioned(
          right: 155.0,
          bottom: 2.0,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(Icons.add, color: Colors.black,),
          ),
        ): SizedBox.shrink(),
      ],
    );
  }
}
