import 'package:flutter/material.dart';
import 'package:nike_idee/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.grey[200]
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

